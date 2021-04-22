package com.codesquad.sidedish.domain;

import com.codesquad.sidedish.dto.CategoryDto;
import com.codesquad.sidedish.dto.ItemDto;
import org.springframework.data.annotation.Id;

import java.util.HashSet;
import java.util.Set;
import java.util.stream.Collectors;

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

    public static CategoryDto createCategoryDto(Category category) {
        Set<ItemDto> itemDtos = category.items.stream().map(item -> Item.createItemDto(item)).collect(Collectors.toSet());
        return new CategoryDto(category.categoryId, category.name, itemDtos);
    }

    public Item getItem(String hash) {
        return items.stream()
                .filter(item -> item.getDetailHash().equals(hash))
                .findFirst()
                .orElseThrow(IllegalArgumentException::new);
    }

}
