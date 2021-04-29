package com.mj_eno.sidedish.domain.user;

import org.springframework.data.annotation.Id;

public class User {

    @Id
    private Long id;
    private String name;
    private String email;
    private String userId;
    private String token;
}
