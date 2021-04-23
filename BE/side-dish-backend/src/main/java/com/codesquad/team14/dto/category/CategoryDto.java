package com.codesquad.team14.dto.category;

import com.codesquad.team14.domain.Category;
import com.codesquad.team14.dto.item.ItemDto;

import java.util.List;

public class CategoryDto {
    private Long id;
    private String name;
    private List<ItemDto> items;

    private CategoryDto(Long id, String name, List<ItemDto> items) {
        this.id = id;
        this.name = name;
        this.items = items;
    }

    public static CategoryDto from(Category category) {
        return new CategoryDto(
                category.getId(),
                category.getName(),
                category.getItemDtoList()
        );
    }

    public Long getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public List<ItemDto> getItems() {
        return items;
    }
}
