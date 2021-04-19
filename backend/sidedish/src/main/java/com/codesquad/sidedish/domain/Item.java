package com.codesquad.sidedish.domain;

import org.springframework.data.annotation.Id;

public class Item {

    @Id
    private String detailHash;

    private String image;
    private String alt;
    private String deliveryType;
    private String title;
    private String description;
    private Integer normalPrice;
    private Integer salePrice;
    private String badge;

    private String topImage;
    private String thumbImages;
    private String productDescription;
    private Integer point;
    private String deliveryInfo;
    private Integer deliveryFee;
    private Integer prices;
    private String detailSection;
}
