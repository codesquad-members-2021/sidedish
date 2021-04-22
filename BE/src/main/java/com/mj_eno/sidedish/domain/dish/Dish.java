package com.mj_eno.sidedish.domain.dish;

import org.springframework.data.annotation.Id;

public class Dish {

    @Id
    Long id;
    String hash;
    String alt;
    String title;
    String description;
    int nPrice;
    int sPrice;
    int point;
    int stock;
    String deliveryType;
    String deliveryInfo;
    String deliveryFee;
    int menuCategoryId;
    int bestMenuCategoryId;
}
