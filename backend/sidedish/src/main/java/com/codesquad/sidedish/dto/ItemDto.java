package com.codesquad.sidedish.dto;

import java.util.List;

public class ItemDto {

    private String detailHash;
    private String image;
    private String alt;
    private List<String> deliveryType;
    private String title;
    private String description;
    private Integer normalPrice;
    private Integer salePrice;
    private List<String> badge;

    public ItemDto(String detailHash, String image, String alt, List<String> deliveryType, String title, String description, Integer normalPrice, Integer salePrice, List<String> badge) {
        this.detailHash = detailHash;
        this.image = image;
        this.alt = alt;
        this.deliveryType = deliveryType;
        this.title = title;
        this.description = description;
        this.normalPrice = normalPrice;
        this.salePrice = salePrice;
        this.badge = badge;
    }

}
