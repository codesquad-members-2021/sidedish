package com.codesquad.sidedish.user.domain;

import com.codesquad.sidedish.user.dto.UserInfoDTO;
import org.springframework.data.annotation.Id;

public class User {

    @Id
    private Long id;
    private String userId;
    private String email;
    private String verifiedEmail;
    private String name;
    private String familyName;
    private String givenName;
    private String picture;
    private String locale;
    private String accessToken;

    protected User() {
    }

    public User(UserInfoDTO userInfoDTO) {
        userId = userInfoDTO.getId();
        email = userInfoDTO.getEmail();
        verifiedEmail = userInfoDTO.getVerified_email();
        name = userInfoDTO.getName();
        familyName = userInfoDTO.getFamily_name();
        givenName = userInfoDTO.getGiven_name();
        picture = userInfoDTO.getPicture();
        locale = userInfoDTO.getLocale();
    }

    public void updateToken(String newToken) {
        this.accessToken = newToken;
    }

    public Long getId() {
        return id;
    }

    public String getUserId() {
        return userId;
    }

    public String getEmail() {
        return email;
    }

    public String getVerifiedEmail() {
        return verifiedEmail;
    }

    public String getName() {
        return name;
    }

    public String getFamilyName() {
        return familyName;
    }

    public String getGivenName() {
        return givenName;
    }

    public String getPicture() {
        return picture;
    }

    public String getLocale() {
        return locale;
    }

    @Override
    public String toString() {
        return "User{" +
                "id='" + id + '\'' +
                ", email='" + email + '\'' +
                ", verified_email='" + verifiedEmail + '\'' +
                ", name='" + name + '\'' +
                ", family_name='" + familyName + '\'' +
                ", given_name='" + givenName + '\'' +
                ", picture='" + picture + '\'' +
                ", locale='" + locale + '\'' +
                '}';
    }
}
