package com.codesquad.sidedish.user.controller;

import com.codesquad.sidedish.user.dto.RequestAccessTokenDTO;
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

@RestController
@RequestMapping("/users")
public class UserController {

    private static final String CLIENT_ID = "sample";
    private static final String LOGIN_PAGE_URL = "sample";
    private RestTemplate template;
    private static final String SECRET_KEY ="sample";

    public UserController(RestTemplateBuilder templateBuilder) {
        this.template = templateBuilder.build();
    }

    @GetMapping("/login")
    public void login(HttpServletResponse response) throws IOException {
        response.sendRedirect(LOGIN_PAGE_URL);
    }

    @GetMapping("/callback")
    public void oauthCallBack(@RequestParam("code")String code){
        System.out.println(code);

        RequestAccessTokenDTO requestAccessTokenDTO = new RequestAccessTokenDTO(CLIENT_ID,SECRET_KEY,code);
        HttpHeaders httpHeaders = new HttpHeaders();
        httpHeaders.setAccept(Arrays.asList(MediaType.APPLICATION_JSON));
        HttpEntity<RequestAccessTokenDTO> httpEntity = new HttpEntity<RequestAccessTokenDTO>(requestAccessTokenDTO,httpHeaders);
        String url = "https://github.com/login/oauth/access_token";
        String body = template.exchange(url, HttpMethod.POST, httpEntity, String.class).getBody();
        System.out.println(body);
    }
}
