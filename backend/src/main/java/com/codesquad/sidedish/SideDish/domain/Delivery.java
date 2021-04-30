package com.codesquad.sidedish.SideDish.domain;

import java.util.Objects;

public class Delivery {
    private String deliveryType;

    public Delivery(String deliveryType) {
        this.deliveryType = deliveryType;
    }

    public String getDeliveryType() {
        return deliveryType;
    }


    @Override
    public boolean equals(Object o) {
        if (this == o) {
            return true;
        }
        if (o == null || getClass() != o.getClass()) {
            return false;
        }
        Delivery delivery = (Delivery) o;
        return Objects.equals(deliveryType, delivery.deliveryType);
    }

    @Override
    public int hashCode() {
        return Objects.hash(deliveryType);
    }
}
