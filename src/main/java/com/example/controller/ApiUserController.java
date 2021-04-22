package com.example.controller;

import com.example.domain.User;
import com.example.dto.UserDto;
import com.example.service.UserService;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

@RestController
public class ApiUserController {

    private final UserService userService;

    public ApiUserController(UserService userService) {
        this.userService = userService;
    }

    public void joinUser(@Valid @RequestBody UserDto userDto) {
        userService.join(userDto);
    }

    public void loginUser(@Valid @RequestBody UserDto userDto, HttpSession httpSession) {
        User loginUser = userService.login(userDto);
        httpSession.setAttribute("sessionUser", loginUser);
    }

}
