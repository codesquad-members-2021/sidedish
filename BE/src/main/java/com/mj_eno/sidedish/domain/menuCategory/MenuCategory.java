package com.mj_eno.sidedish.domain.menuCategory;

import org.springframework.data.annotation.Id;

public class MenuCategory {

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
