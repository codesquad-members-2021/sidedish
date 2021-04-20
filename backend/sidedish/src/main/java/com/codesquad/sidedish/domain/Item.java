package com.codesquad.sidedish.domain;

import org.springframework.data.annotation.Id;

import java.util.List;

public class Item {

    @Id
    private String detailHash;

    private String image;
    private String alt;
    private List<String> deliveryType;
    private String title;
    private String description;
    private Integer normalPrice;
    private Integer salePrice;
    private List<String> badge;

    private String topImage;//x
    private List<String> thumbImages;
    private String productDescription;
    private Integer point;
    private String deliveryInfo;
    private Integer deliveryFee;
    private List<Integer> prices;//x
    private List<String> detailSection;
}
