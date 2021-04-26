package com.codesquad.sidedish.domain;

import com.codesquad.sidedish.dto.CategoryDto;
import com.codesquad.sidedish.dto.ItemDto;
import org.springframework.data.annotation.Id;
import org.springframework.data.relational.core.mapping.MappedCollection;

import java.util.HashMap;
import java.util.Map;
import java.util.Set;
import java.util.stream.Collectors;

public class Category {

    @Id
    private Long categoryId;

    private String name;

    @MappedCollection(keyColumn = "detail_hash")
    private Map<String, Item> items = new HashMap<>();

    public Category(Long categoryId, String name) {
        this.categoryId = categoryId;
        this.name = name;
    }

    public static CategoryDto createCategoryDto(Category category) {
        Set<ItemDto> itemDtos = category.items
                .entrySet()
                .stream()
                .map(Map.Entry::getValue)
                .map(item -> Item.createItemDto(item))
                .collect(Collectors.toSet());
        return new CategoryDto(category.categoryId, category.name, itemDtos);
    }

    public Item findItem(String hash) {
        return items.get(hash);
    }

}
