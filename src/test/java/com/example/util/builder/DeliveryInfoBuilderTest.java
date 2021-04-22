package com.example.util.builder;

import com.example.util.DeliveryType;
import com.example.util.Location;
import com.example.util.Week;
import org.junit.jupiter.api.Test;

import java.util.Arrays;


class DeliveryInfoBuilderTest {

    DeliveryInfoBuilder deliveryInfoBuilder = new DeliveryInfoBuilder();

    @Test
    void test() {
        deliveryInfoBuilder.addDeliveryType(Arrays.asList(DeliveryType.새벽배송, DeliveryType.전국택배));  // List.of 는 java8에서 지원하지 않아 Arrays.asList로 변경함.
        deliveryInfoBuilder.addLocation(Arrays.asList(Location.서울, Location.경기));
        deliveryInfoBuilder.addWeeks(Arrays.asList(Week.월, Week.화, Week.수, Week.목, Week.금, Week.토));
        String message = deliveryInfoBuilder.build();
        System.out.println(message);
    }


}
