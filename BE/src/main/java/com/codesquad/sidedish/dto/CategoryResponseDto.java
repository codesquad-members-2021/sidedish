package com.codesquad.sidedish.dto;

import com.codesquad.sidedish.domain.Category;
import com.codesquad.sidedish.domain.Dish;

import java.util.HashMap;
import java.util.Map;

public class CategoryResponseDto {
    private final Long id;
    private final String name;
    private final String type;
    private final Map<String, DishResponseDto> dishes;

    private CategoryResponseDto(Long id, String name, String type, Map<String, DishResponseDto> dishes) {
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

    public String getType() {
        return type;
    }

    public Map<String, DishResponseDto> getDishes() {
        return dishes;
    }

    public static CategoryResponseDto of(Category category) {
        return new CategoryResponseDto(category.getId(), category.getName(), category.getType(), dishToDishResponseDto(category.getDishes()));
    }

    private static Map<String, DishResponseDto> dishToDishResponseDto(Map<String, Dish> dishes) {
        Map<String, DishResponseDto> dishResponseDtoMap = new HashMap<>();
        for (String key : dishes.keySet()) {
            dishResponseDtoMap.put(key, DishResponseDto.of(dishes.get(key)));
        }
        return dishResponseDtoMap;
    }
}
