package com.codesquad.sidedish.dto;

import com.fasterxml.jackson.annotation.JsonProperty;

public class DetailItemDto {

    @JsonProperty
    private String detailHash;

    @JsonProperty
    private String topImage;

    @JsonProperty
    private String thumbImages;//list

    @JsonProperty
    private String productDescription;

    @JsonProperty
    private Integer point;

    @JsonProperty
    private String deliveryInfo;

    @JsonProperty
    private String deliveryFee;

    @JsonProperty
    private String prices;//list

    @JsonProperty
    private String detailSection;//list

    public DetailItemDto(String detailHash, String topImage, String thumbImages, String productDescription, Integer point, String deliveryInfo, String deliveryFee, String prices, String detailSection) {
        this.detailHash = detailHash;
        this.topImage = topImage;
        this.thumbImages = thumbImages;
        this.productDescription = productDescription;
        this.point = point;
        this.deliveryInfo = deliveryInfo;
        this.deliveryFee = deliveryFee;
        this.prices = prices;
        this.detailSection = detailSection;
    }
}
