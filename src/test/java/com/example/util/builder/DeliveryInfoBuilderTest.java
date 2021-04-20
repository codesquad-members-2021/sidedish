package com.example.util.builder;

import com.example.util.DeliveryType;
import com.example.util.Location;
import com.example.util.Week;
import org.junit.jupiter.api.Test;

import java.util.List;

class DeliveryInfoBuilderTest {

    DeliveryInfoBuilder deliveryInfoBuilder = new DeliveryInfoBuilder();

    @Test
    void test() {
        deliveryInfoBuilder.addDeliveryType(List.of(DeliveryType.새벽배송, DeliveryType.전국택배));
        deliveryInfoBuilder.addLocation(List.of(Location.서울, Location.경기));
        deliveryInfoBuilder.addWeeks(List.of(Week.월, Week.화, Week.수, Week.목, Week.금, Week.토));
        String message = deliveryInfoBuilder.build();
        System.out.println(message);
    }


}
