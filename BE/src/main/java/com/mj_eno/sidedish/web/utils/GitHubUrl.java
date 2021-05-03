package com.mj_eno.sidedish.web.utils;

public enum GitHubUrl {

    ACCESS_TOKEN("https://github.com/login/oauth/access_token"),
    USER_INFO("https://api.github.com/user"),
    USER_EMAIL("https://api.github.com/user/emails");

    private String url;

    GitHubUrl(String url) {
        this.url = url;
    }

    public String getUrl() {
        return url;
    }
}
