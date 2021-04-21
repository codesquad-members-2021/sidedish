package com.codesquad.sidedish.entity;

import org.springframework.data.annotation.Id;

public class Category {
    @Id
    private Long id;
    private String name;
    private String dishType;

    private Category() {
    }

    public Category(Long id, String name, String dishType) {
        this.id = id;
        this.name = name;
        this.dishType = dishType;
    }

    public Long getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDishType() {
        return dishType;
    }

    public void setDishType(String dishType) {
        this.dishType = dishType;
    }
}
