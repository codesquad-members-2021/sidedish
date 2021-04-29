package com.mj_eno.sidedish.domain.badge;

import org.springframework.data.annotation.Id;

public class Badge {

    @Id
    private Long id;
    private String name;

    public Long getId() {
        return id;
    }

    public String getName() {
        return name;
    }
}
