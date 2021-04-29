package com.mj_eno.sidedish.domain.user;

import com.mj_eno.sidedish.web.dto.EmailDTO;
import com.mj_eno.sidedish.web.dto.TokenDTO;
import com.mj_eno.sidedish.web.dto.UserInfoDTO;
import org.springframework.data.annotation.Id;

public class User {

    @Id
    private Long id;
    private String name;
    private String email;
    private String userId;
    private String token;

    public User(UserInfoDTO userInfoDTO, EmailDTO emailDTO, TokenDTO tokenDTO) {
        this.name = userInfoDTO.getName();
        this.email = emailDTO.getEmail();
        this.userId = userInfoDTO.getLogin();
        this.token = tokenDTO.getAccess_token();
    }

    public void update(UserInfoDTO userInfoDTO, EmailDTO emailDTO, TokenDTO tokenDTO) {
        this.name = userInfoDTO.getName();
        this.email = emailDTO.getEmail();
        this.userId = userInfoDTO.getLogin();
        this.token = tokenDTO.getAccess_token();
    }

    public Long getId() {
        return id;
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
