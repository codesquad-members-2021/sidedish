package com.mj_eno.sidedish.web;

import com.mj_eno.sidedish.domain.user.User;
import com.mj_eno.sidedish.service.UserService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class UserController {

    public final UserService userService;
    private final Logger logger = LoggerFactory.getLogger(DishController.class);

    public UserController(UserService userService) {
        this.userService = userService;
    }

    @GetMapping("/login")
    public User login(@RequestParam String code) {
        logger.info("로그인 요청");
        return userService.login(code);
    }
}
