package com.codesquad.sidedish.dto;

import com.fasterxml.jackson.annotation.JsonProperty;

import java.util.HashSet;
import java.util.Set;

public class CategoryDto {

    @JsonProperty
    private Long categoryId;

    @JsonProperty
    private String name;

    @JsonProperty
    private Set<ItemDto> items = new HashSet<>();

    public CategoryDto(Long categoryId, String name, Set<ItemDto> items) {
        this.categoryId = categoryId;
        this.name = name;
        this.items = items;
    }

}
