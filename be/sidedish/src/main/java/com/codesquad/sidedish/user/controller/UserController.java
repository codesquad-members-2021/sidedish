package com.codesquad.sidedish.user.controller;

import com.codesquad.sidedish.user.dto.ReceiveAccessTokenDTO;
import com.codesquad.sidedish.user.dto.RequestAccessTokenDTO;
import com.codesquad.sidedish.user.dto.UserInfoDTO;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
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
import java.util.Arrays;
import java.util.Collections;

@RestController
@RequestMapping("/users")
public class UserController {

    private static final Logger logger = LoggerFactory.getLogger(UserController.class);
    private static final String CLIENT_ID = "";
    private static final String SECRET_KEY = "";
    private static final String REDIRECT_URI = "http://localhost:8080/users/callback";
    private static final String LOGIN_PAGE_URL = "https://accounts.google.com/o/oauth2/v2/auth?client_id=" + CLIENT_ID + "&redirect_uri=" + REDIRECT_URI + "&response_type=code&scope=https://www.googleapis.com/auth/userinfo.email%20https://www.googleapis.com/auth/userinfo.profile";
    private static final String GET_USER_INFO_URL = "https://www.googleapis.com/oauth2/v1/userinfo";

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
        RequestAccessTokenDTO requestAccessTokenDTO = new RequestAccessTokenDTO(CLIENT_ID, SECRET_KEY, code, REDIRECT_URI);
        HttpHeaders httpHeaders = new HttpHeaders();
        httpHeaders.setAccept(Collections.singletonList(MediaType.APPLICATION_JSON));
        HttpEntity<RequestAccessTokenDTO> httpEntity = new HttpEntity<>(requestAccessTokenDTO, httpHeaders);
        String url = "https://oauth2.googleapis.com/token";
        //액세스 토큰 요청
        ReceiveAccessTokenDTO receiveAccessTokenDTO = restTemplate.exchange(url, HttpMethod.POST, httpEntity, ReceiveAccessTokenDTO.class).getBody();
        logger.info("receiveAccessTokenDTO : {}", receiveAccessTokenDTO);

        //User Info 요청 준비
        httpHeaders = new HttpHeaders();
        httpHeaders.setAccept(Collections.singletonList(MediaType.APPLICATION_JSON));
        assert receiveAccessTokenDTO != null;
        httpHeaders.setBearerAuth(receiveAccessTokenDTO.getAccess_token());
        HttpEntity<?> userInfoHttpEntity = new HttpEntity<>(httpHeaders);
        //UserInfo 요청
        return restTemplate.exchange(GET_USER_INFO_URL, HttpMethod.GET, userInfoHttpEntity, UserInfoDTO.class).getBody();
    }
}
