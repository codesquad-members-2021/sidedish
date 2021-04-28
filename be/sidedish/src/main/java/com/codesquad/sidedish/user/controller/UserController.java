package com.codesquad.sidedish.user.controller;

import com.codesquad.sidedish.user.dto.ReceiveAccessTokenDTO;
import com.codesquad.sidedish.user.dto.UserInfoDTO;
import com.codesquad.sidedish.user.service.GoogleApiRequester;
import com.fasterxml.jackson.core.JsonProcessingException;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

import static com.codesquad.sidedish.util.UrlConstant.*;

@RestController
@RequestMapping("/users")
public class UserController {

    private final GoogleApiRequester googleApiRequester;

    public UserController(GoogleApiRequester googleApiRequester) {
        this.googleApiRequester = googleApiRequester;
    }

    @GetMapping("/login")
    public void login(HttpServletResponse response) throws IOException {
        response.sendRedirect(LOGIN_PAGE_URL);
    }

    @GetMapping("/callback")
    public UserInfoDTO oauthCallBack(@RequestParam("code") String code, @RequestParam("scope") String scope,
                                     @RequestParam("authuser") String authuser, @RequestParam("prompt") String prompt) throws JsonProcessingException {
        ReceiveAccessTokenDTO receiveAccessTokenDTO = googleApiRequester.requestAccessToken(code);
        return googleApiRequester.requestUserInfo(receiveAccessTokenDTO.getAccess_token());
    }
}
