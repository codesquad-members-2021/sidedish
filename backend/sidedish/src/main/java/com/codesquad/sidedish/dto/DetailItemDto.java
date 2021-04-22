package com.codesquad.sidedish.dto;

import java.util.List;

public class DetailItemDto {

    private String detailHash;
    private String topImage;
    private List<String> thumbImages;
    private String productDescription;
    private Integer point;
    private String deliveryInfo;
    private Integer deliveryFee;
    private List<Integer> prices;
    private List<String> detailSection;

    public DetailItemDto(String detailHash, String topImage, List<String> thumbImages, String productDescription, Integer point, String deliveryInfo, Integer deliveryFee, List<Integer> prices, List<String> detailSection) {
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
