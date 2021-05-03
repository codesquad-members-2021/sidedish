package com.mj_eno.sidedish.web.dto;

public class TokenDTO {

    private String access_token;
    private String token_type;
    private String scope;

    public void setAccess_token(String access_token) {
        this.access_token = access_token;
    }

    public void setToken_type(String token_type) {
        this.token_type = token_type;
    }

    public void setScope(String scope) {
        this.scope = scope;
    }

    public String getAccess_token() {
        return access_token;
    }

    @Override
    public String toString() {
        return "TokenDTO{" +
                "access_token='" + access_token + '\'' +
                ", token_type='" + token_type + '\'' +
                ", scope='" + scope + '\'' +
                '}';
    }
}
