package com.codesquad.sidedish.domain;

import org.springframework.data.annotation.Id;

public class User {

    @Id
    String email;

    String name;

    private User(String email, String name) {
        this.email = email;
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public String getName() {
        return name;
    }

}
