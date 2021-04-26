package com.codesquad.sidedish.domain;

import com.codesquad.sidedish.CategoryType;
import org.springframework.data.annotation.Id;
import org.springframework.data.relational.core.mapping.MappedCollection;

import java.util.HashMap;
import java.util.Map;

public class Category {

    @Id
    private Long id;
    private String name;
    private CategoryType type;

    @MappedCollection(idColumn = "category", keyColumn = "id")
    private Map<String, Dish> dishes = new HashMap<>();

    private Category() {
    }

    public Category(String name, CategoryType type) {
        this.name = name;
        this.type = type;
    }

    public void addDish(Dish dish) {
        dishes.put(dish.getId(), dish);
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

    public Map<String, Dish> getDishes() {
        return dishes;
    }
}
