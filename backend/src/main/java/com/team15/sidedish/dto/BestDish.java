package com.team15.sidedish.dto;

public class BestDish {
    private String dish_hash;
    private Integer category_id;

    public BestDish(String dish_hash, Integer category_id) {
        this.dish_hash = dish_hash;
        this.category_id = category_id;
    }

    public String getDish_hash() {
        return dish_hash;
    }

    public Integer getCategory_id() {
        return category_id;
    }
}
