package com.codesquad.sidedish.dto;

import com.codesquad.sidedish.domain.Category;
import com.codesquad.sidedish.domain.Item;

import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.stream.Collectors;

public class CategoryDto {

    private Long categoryId;
    private String name;
    private Set<ItemDto> items = new HashSet<>();

    public CategoryDto(Long categoryId, String name, Set<ItemDto> items) {
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

    public Set<ItemDto> getItems() {
        return items;
    }

    public static CategoryDto of(Category category) {
        Set<ItemDto> itemDtos = category.getItems().stream().map(item -> ItemDto.of(item)).collect(Collectors.toSet());
        return new CategoryDto(category.getCategoryId(), category.getName(), itemDtos);
    }

}
