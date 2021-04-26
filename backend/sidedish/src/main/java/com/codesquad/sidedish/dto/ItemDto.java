package com.codesquad.sidedish.dto;

import com.fasterxml.jackson.annotation.JsonProperty;

public class ItemDto {

    @JsonProperty
    private String detailHash;

    @JsonProperty
    private String image;

    @JsonProperty
    private String alt;

    @JsonProperty
    private String deliveryType;//list

    @JsonProperty
    private String title;

    @JsonProperty
    private String description;

    @JsonProperty
    private Integer normalPrice;

    @JsonProperty
    private Integer salePrice;

    @JsonProperty
    private String badge;//list

    public ItemDto(String detailHash, String image, String alt, String deliveryType, String title, String description, Integer normalPrice, Integer salePrice, String badge) {
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

    @Override
    public String toString() {
        return "ItemDto{" +
                "detailHash='" + detailHash + '\'' +
                ", image='" + image + '\'' +
                ", alt='" + alt + '\'' +
                ", deliveryType=" + deliveryType +
                ", title='" + title + '\'' +
                ", description='" + description + '\'' +
                ", normalPrice=" + normalPrice +
                ", salePrice=" + salePrice +
                ", badge=" + badge +
                '}';
    }
}
