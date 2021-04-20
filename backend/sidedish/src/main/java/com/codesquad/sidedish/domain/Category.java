package com.codesquad.sidedish.domain;

import org.springframework.data.annotation.Id;

import java.util.HashSet;
import java.util.Set;

public class Category {

    @Id
    private Long categoryId;

    private String name;
    private Set<Item> items = new HashSet<>();

    public Category(Long categoryId, String name, Set<Item> items) {
        this.categoryId = categoryId;
        this.name = name;
        this.items = items;
    }

    public Long getCategoryId() {
        return categoryId;
    }

    public String getName() {
        return name;
    }

    public Set<Item> getItems() {
        return items;
    }

    public Item getItem(String hash) {
        return items.stream()
                .filter(item -> item.getDetailHash().equals(hash))
                .findFirst()
                .orElseThrow(IllegalArgumentException::new);
    }
}
