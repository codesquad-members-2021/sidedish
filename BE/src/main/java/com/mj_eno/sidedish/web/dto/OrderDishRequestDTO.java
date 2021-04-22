package com.mj_eno.sidedish.web.dto;

import com.mj_eno.sidedish.domain.dish.Dish;
import com.mj_eno.sidedish.exception.ErrorMessage;
import com.mj_eno.sidedish.exception.OrderFailedException;

public class OrderDishRequestDTO {

    String hash;
    int order;

    public Dish toEntity() {
        if (hash == null || order == 0) {
            throw new OrderFailedException(ErrorMessage.ORDER_FAILED);
        }
        return new Dish(hash, order);
    }

    public void setHash(String hash) {
        this.hash = hash;
    }

    public void setOrder(int order) {
        this.order = order;
    }
}
