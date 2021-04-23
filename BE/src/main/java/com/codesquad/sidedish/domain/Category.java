package com.codesquad.sidedish.domain;

import org.springframework.data.annotation.Id;

import java.util.HashSet;
import java.util.Set;

public class Category {

    @Id
    private Long id;
    private String name;
    private String type;

    private Set<Dish> dishes = new HashSet<>();

    private Category(Long id, String name, String type) {
        this.id = id;
        this.name = name;
        this.type = type;
    }

    public Category(String name, String type) {
        this.name = name;
        this.type = type;
    }

    public void addDish(Dish dish){
        dishes.add(dish);
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

    public Set<Dish> getDishes() {
        return dishes;
    }
}
