package com.codesquad.sidedish.SideDish.domain.delivery;

import org.springframework.data.annotation.Id;

public class DishDelivery {

    @Id
    private Long id;

    private String dish;
    private Long delivery;

    public DishDelivery(String dish, Long delivery) {
        this.dish = dish;
        this.delivery = delivery;
    }

    public Long getId() {
        return id;
    }

    public String getDish() {
        return dish;
    }

    public Long getDelivery() {
        return delivery;
    }

}
