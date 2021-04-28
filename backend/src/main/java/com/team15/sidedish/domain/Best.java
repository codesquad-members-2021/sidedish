package com.team15.sidedish.domain;

import org.springframework.data.annotation.Id;
import org.springframework.data.relational.core.mapping.Table;

@Table("best")
public class Best {
    @Id
    private Long categoryId;
    private String name;

    public Best(Long categoryId, String name) {
        this.categoryId = categoryId;
        this.name = name;
    }

    public Long getCategoryId() {
        return categoryId;
    }

    public String getName() {
        return name;
    }
}
