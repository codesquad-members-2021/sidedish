package com.mj_eno.sidedish.web.dto;

import com.mj_eno.sidedish.domain.user.User;

public class UserResponseDTO {

    private String name;
    private String email;
    private String userId;
    private String token;

    public UserResponseDTO(User user) {
        this.name = user.getName();
        this.email = user.getEmail();
        this.userId = user.getUserId();
        this.token = user.getToken();
    }

    public String getName() {
        return name;
    }

    public String getEmail() {
        return email;
    }

    public String getUserId() {
        return userId;
    }

    public String getToken() {
        return token;
    }
}
