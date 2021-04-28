package com.mj_eno.sidedish.web.dto;

public class TokenDTO {

    private String accessToken;
    private String tokenType;
    private String scope;

    public void setAccessToken(String accessToken) {
        this.accessToken = accessToken;
    }

    public void setTokenType(String tokenType) {
        this.tokenType = tokenType;
    }

    public void setScope(String scope) {
        this.scope = scope;
    }
}
