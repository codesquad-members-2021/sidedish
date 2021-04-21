package com.team15.sidedish.domain;

import org.springframework.data.annotation.Id;

import java.util.HashSet;
import java.util.Set;

public class Best {
    @Id
    private int categoryId;
    private String name;

    private Set<Dish> dishes = new HashSet<>();

    public Best() { }

    public Best(int categoryId, String name, Set<Dish> dishes) {
        this.categoryId = categoryId;
        this.name = name;
        this.dishes = dishes;
    }

    public int getCategoryId() {
        return categoryId;
    }

    public String getName() {
        return name;
    }

    public Set<Dish> getDishes() {
        return dishes;
    }

    public void addDish(Dish dish) {
        dishes.add(dish);
    }

    public void clearDish(){
        dishes.clear();
    }

}
