package com.codesquad.sidedish.dto;

import com.codesquad.sidedish.domain.Dish;

public class DishDetailResponseDto {
    private final String topImage;
    private final String thumbImages;
    private final String productDescription;
    private final String deliveryInfo;
    private final String deliveryFee;
    private final String detailSection;
    private final int stock;
    private final int point;

    private DishDetailResponseDto(String topImage, String thumbImages, String productDescription,
                                  String deliveryInfo, String deliveryFee, String detailSection,
                                  int stock, int point) {
        this.topImage = topImage;
        this.thumbImages = thumbImages;
        this.productDescription = productDescription;
        this.deliveryInfo = deliveryInfo;
        this.deliveryFee = deliveryFee;
        this.detailSection = detailSection;
        this.stock = stock;
        this.point = point;
    }

    public String getTopImage() {
        return topImage;
    }

    public String getThumbImages() {
        return thumbImages;
    }

    public String getProductDescription() {
        return productDescription;
    }

    public String getDeliveryInfo() {
        return deliveryInfo;
    }

    public String getDeliveryFee() {
        return deliveryFee;
    }

    public String getDetailSection() {
        return detailSection;
    }

    public int getStock() {
        return stock;
    }

    public int getPoint() {
        return point;
    }

    public static DishDetailResponseDto of(Dish dish) {
        return new DishDetailResponseDto(dish.getTopImage(), dish.getThumbImages(),
                dish.getProductDescription(), dish.getDeliveryInfo(), dish.getDeliveryFee(),
                dish.getDetailSection(), dish.getStock(), dish.getPoint());
    }
}

