package com.codesquad.team14.dto;

import com.codesquad.team14.domain.Category;
import com.codesquad.team14.domain.Item;
import com.fasterxml.jackson.annotation.JsonProperty;

import java.util.Set;
import java.util.stream.Collectors;

public class CategoryDto {

    @JsonProperty("category_id")
    private Long id;

    @JsonProperty("name")
    private String name;

    @JsonProperty("items")
    private Set<ItemDto> items;

    private CategoryDto(Long id, String name, Set<ItemDto> items) {
        this.id = id;
        this.name = name;
        this.items = items;
    }

    public static CategoryDto from(Category category) {
        Set<Item> items = category.getItems();
        Set<ItemDto> itemDtos = items.stream()
                .map(ItemDto::from)
                .collect(Collectors.toSet());
        return new CategoryDto(
                category.getId(),
                category.getName(),
                itemDtos
        );
    }

    public Long getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public Set<ItemDto> getItems() {
        return items;
    }
}
