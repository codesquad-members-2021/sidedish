package com.example.dto;

import javax.validation.constraints.Pattern;

public class UserDto {

    @Pattern(regexp = "^[a-zA-Z@.]")
    private String email;

    private String password;

    public UserDto(String email, String password) {
        this.email = email;
        this.password = password;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

}
