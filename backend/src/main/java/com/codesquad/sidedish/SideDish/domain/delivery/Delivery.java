package com.codesquad.sidedish.SideDish.domain.delivery;

import org.springframework.data.annotation.Id;

import java.util.HashSet;
import java.util.Set;

public class Delivery {

    @Id
    private Long id;

    private String deliveryType;

    private Set<DishDelivery> dishDeliveries = new HashSet<>();

    protected Delivery() {

    }

    public Delivery(String deliveryType) {
        this.deliveryType = deliveryType;
    }

    public Long getId() {
        return id;
    }

    public String getDeliveryType() {
        return deliveryType;
    }

    public Set<DishDelivery> getDishDeliveries() {
        return dishDeliveries;
    }

}
