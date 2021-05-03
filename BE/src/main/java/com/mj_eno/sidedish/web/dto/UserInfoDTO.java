package com.mj_eno.sidedish.web.dto;

public class UserInfoDTO {

    private String login;
    private String name;

    public String getLogin() {
        return login;
    }

    public void setLogin(String login) {
        this.login = login;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Override
    public String toString() {
        return "UserInfoDTO{" +
                "login='" + login + '\'' +
                ", name='" + name + '\'' +
                '}';
    }
}
