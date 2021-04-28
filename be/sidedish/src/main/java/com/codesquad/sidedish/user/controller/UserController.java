package com.codesquad.sidedish.user.controller;

import com.codesquad.sidedish.user.dto.ReceiveAccessTokenDTO;
import com.codesquad.sidedish.user.dto.RequestAccessTokenDTO;
import com.codesquad.sidedish.user.dto.UserInfoDTO;
import com.fasterxml.jackson.core.JsonProcessingException;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.boot.web.client.RestTemplateBuilder;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.client.RestTemplate;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Collections;

import static com.codesquad.sidedish.util.SecretUtil.clientId;
import static com.codesquad.sidedish.util.SecretUtil.clientSecret;
import static com.codesquad.sidedish.util.UrlConstant.*;

@RestController
@RequestMapping("/users")
public class UserController {

    private static final Logger logger = LoggerFactory.getLogger(UserController.class);

    private final RestTemplate restTemplate;

    public UserController(RestTemplateBuilder templateBuilder) {
        this.restTemplate = templateBuilder.build();
    }

    @GetMapping("/login")
    public void login(HttpServletResponse response) throws IOException {
        response.sendRedirect(LOGIN_PAGE_URL);
    }

    @GetMapping("/callback")
    public UserInfoDTO oauthCallBack(@RequestParam("code") String code, @RequestParam("scope") String scope,
                                     @RequestParam("authuser") String authuser, @RequestParam("prompt") String prompt) throws JsonProcessingException {
        logger.info("code : {}", code);
        logger.info("scope : {}", scope);
        logger.info("authuser : {}", authuser);
        logger.info("prompt : {}", prompt);

        //액세스 토큰 요청 준비
        RequestAccessTokenDTO requestAccessTokenDTO = new RequestAccessTokenDTO(clientId(), clientSecret(), code, REDIRECT_URI);
        HttpHeaders httpHeaders = new HttpHeaders();
        httpHeaders.setAccept(Collections.singletonList(MediaType.APPLICATION_JSON));
        HttpEntity<RequestAccessTokenDTO> httpEntity = new HttpEntity<>(requestAccessTokenDTO, httpHeaders);
        //액세스 토큰 요청
        ReceiveAccessTokenDTO receiveAccessTokenDTO = restTemplate.exchange(GOOGLE_API_GET_ACCESS_TOKEN,
                HttpMethod.POST, httpEntity, ReceiveAccessTokenDTO.class).getBody();
        logger.info("receiveAccessTokenDTO : {}", receiveAccessTokenDTO);

        //User Info 요청 준비
        httpHeaders = new HttpHeaders();
        httpHeaders.setAccept(Collections.singletonList(MediaType.APPLICATION_JSON));
        assert receiveAccessTokenDTO != null;
        httpHeaders.setBearerAuth(receiveAccessTokenDTO.getAccess_token());
        HttpEntity<?> userInfoHttpEntity = new HttpEntity<>(httpHeaders);
        //UserInfo 요청
        return restTemplate.exchange(GOOGLE_API_GET_USER_INFO, HttpMethod.GET, userInfoHttpEntity, UserInfoDTO.class).getBody();
    }
}
