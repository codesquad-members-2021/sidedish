package com.codesquad.sidedish.domain;

import com.codesquad.sidedish.dto.CategoryDto;
import com.codesquad.sidedish.dto.ItemDto;
import org.springframework.data.annotation.Id;
import org.springframework.data.annotation.PersistenceConstructor;
import org.springframework.data.relational.core.mapping.MappedCollection;

import java.util.HashSet;
import java.util.Set;
import java.util.stream.Collectors;

public class Category {

    @Id
    private Long categoryId;

    private String name;

    @MappedCollection(idColumn = "category")
    private Set<Item> items = new HashSet<>();

    @PersistenceConstructor
    public Category(Long categoryId, String name) {
        this.categoryId = categoryId;
        this.name = name;

    }

    public static CategoryDto createCategoryDto(Category category) {
        Set<ItemDto> itemDtos = category.items.stream().map(item -> Item.createItemDto(item)).collect(Collectors.toSet());
        return new CategoryDto(category.categoryId, category.name, itemDtos);
    }

    public Item findItem(Long hash) {
        for(Item item : items) {
            if(item.getDetailHash().equals(hash)) {
                return item;
            }
        }

//        return items.stream()
//                .filter(item -> item.getDetailHash().equals(hash))
//                .findFirst()
//                .orElseThrow(IllegalArgumentException::new);
        return null;
    }

    @Override
    public String toString() {
        return "Category{" +
                "categoryId=" + categoryId +
                ", name='" + name + '\'' +
                ", items=" + items +
                '}';
    }
}
