package com.codesquad.team14.dto.category;

import com.codesquad.team14.domain.Category;
import com.codesquad.team14.domain.Item;

import java.util.ArrayList;
import java.util.List;

public class CategoryDto {
    private Long id;
    private String name;
    private List<Item> items;

    private CategoryDto(Long id, String name, List<Item> items) {
        this.id = id;
        this.name = name;
        this.items = items;
    }

    public static CategoryDto from(Category category) {
        return new CategoryDto(
                category.getId(),
                category.getName(),
                new ArrayList<>(category.getItems())
        );
    }

    public Long getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public List<Item> getItems() {
        return items;
    }
}
