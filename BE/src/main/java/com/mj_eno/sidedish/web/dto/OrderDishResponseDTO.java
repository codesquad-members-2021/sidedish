package com.mj_eno.sidedish.web.dto;

import com.mj_eno.sidedish.domain.dish.Dish;

public class OrderDishResponseDTO {

    String hash;
    int stock;

    public OrderDishResponseDTO(Dish dish) {
        this.hash = dish.getHash();
        this.stock = dish.getStock();
    }

    public String getHash() {
        return hash;
    }

    public int getStock() {
        return stock;
    }
}
