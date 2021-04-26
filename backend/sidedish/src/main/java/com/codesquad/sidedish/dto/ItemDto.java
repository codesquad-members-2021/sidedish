package com.codesquad.sidedish.dto;

import com.fasterxml.jackson.annotation.JsonProperty;

import java.util.List;

public class ItemDto {

    @JsonProperty
    private String detailHash;

    @JsonProperty
    private String image;

    @JsonProperty
    private String alt;

    @JsonProperty
    private List<String> deliveryType;

    @JsonProperty
    private String title;

    @JsonProperty
    private String description;

    @JsonProperty
    private Integer normalPrice;

    @JsonProperty
    private Integer salePrice;

    @JsonProperty
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
