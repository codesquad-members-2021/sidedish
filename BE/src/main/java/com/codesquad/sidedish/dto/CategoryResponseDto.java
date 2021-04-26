package com.codesquad.sidedish.dto;

import com.codesquad.sidedish.CategoryType;
import com.codesquad.sidedish.domain.Category;
import com.codesquad.sidedish.domain.Dish;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public class CategoryResponseDto {
    private final Long id;

    @JsonProperty("category")
    private CategoryType type;
    private String name;
    private List<DishResponseDto> dishes;

    private CategoryResponseDto(Long id, String name, CategoryType type, List<DishResponseDto> dishes) {
        this.id = id;
        this.name = name;
        this.type = type;
        this.dishes = dishes;
    }

    public Long getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public CategoryType getType() {
        return type;
    }

    public List<DishResponseDto> getDishes() {
        return dishes;
    }

    public static CategoryResponseDto of(Category category) {
        return new CategoryResponseDto(category.getId(), category.getName(), category.getType(), dishesMapToDishResponseDtoList(category.getDishes()));
    }

    private static List<DishResponseDto> dishesMapToDishResponseDtoList(Map<String, Dish> dishes) {
        List<DishResponseDto> dishResponseDto = new ArrayList<>();
        for (String key : dishes.keySet()) {
            dishResponseDtoMap.put(key, DishResponseDto.of(dishes.get(key)));
        }
        return dishResponseDto;
    }
}
