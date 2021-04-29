package com.codesquad.sidedish.user.dto;

public class ResponseJwtTokenDTO {
    private String token;

    protected ResponseJwtTokenDTO() {
    }

    public ResponseJwtTokenDTO(String token) {
        this.token = token;
    }

    public String getToken() {
        return token;
    }
}
