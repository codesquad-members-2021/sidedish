package com.team10.banchan.model;

import org.springframework.data.annotation.Id;

public class Category {

    @Id
    private final Long id;
    private final String name;

    Category(Long id, String name) {
        this.id = id;
        this.name = name;
    }

    public static Category newCategory(String name) {
        return new Category(null, name);
    }

    public Long getId() {
        return id;
    }

    public String getName() {
        return name;
    }
}
