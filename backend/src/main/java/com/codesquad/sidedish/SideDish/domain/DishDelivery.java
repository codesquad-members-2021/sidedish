package com.codesquad.sidedish.SideDish.domain;

import org.springframework.data.annotation.Id;
import org.springframework.data.annotation.PersistenceConstructor;

public class DishDelivery {

    @Id
    private Long id;

    private String dish;

    private Long delivery;

    @PersistenceConstructor
    public DishDelivery(Long delivery) {
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
