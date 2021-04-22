package com.codesquad.sidedish.entity;

import org.springframework.data.annotation.Id;

public class Category {

    @Id
    private Long id;

    private String name;

    private String type;

    private Category(Long id, String name, String type) {
        this.id = id;
        this.name = name;
        this.type = type;
    }

    public Category(String name, String type) {
        this.name = name;
        this.type = type;
    }

    public Long getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public String getType() {
        return type;
    }
}
