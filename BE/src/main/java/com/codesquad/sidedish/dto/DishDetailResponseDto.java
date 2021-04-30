package com.codesquad.sidedish.dto;

import com.codesquad.sidedish.domain.Dish;
import com.codesquad.sidedish.domain.Image;

public class DishDetailResponseDto {

    private String dishId;
    private String topImage;
    private String thumbImages;
    private String productDescription;
    private String point;
    private String deliveryInfo;
    private String deliveryFee;
    private String normalPrice;
    private String sellingPrice;
    private String detailSection;

    private DishDetailResponseDto(String dishId, String topImage, String thumbImages, String productDescription,
                                  String point, String deliveryInfo, String deliveryFee, String normalPrice,
                                  String sellingPrice, String detailSection) {
        this.dishId = dishId;
        this.topImage = topImage;
        this.thumbImages = thumbImages;
        this.productDescription = productDescription;
        this.point = point;
        this.deliveryInfo = deliveryInfo;
        this.deliveryFee = deliveryFee;
        this.normalPrice = normalPrice;
        this.sellingPrice = sellingPrice;
        this.detailSection = detailSection;
    }

    public String getDishId() {
        return dishId;
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

    public String getPoint() {
        return point;
    }

    public String getDeliveryInfo() {
        return deliveryInfo;
    }

    public String getDeliveryFee() {
        return deliveryFee;
    }

    public String getNormalPrice() {
        return normalPrice;
    }

    public String getSellingPrice() {
        return sellingPrice;
    }

    public String getDetailSection() {
        return detailSection;
    }

    public static DishDetailResponseDto of(Dish dish) {
        Image image = dish.getImage();
        return new DishDetailResponseDto(dish.getId(), image.getTopImage(), image.getThumbImages(),
                dish.getDescription(), dish.getPoint(), dish.getDeliveryInfo(), dish.getDeliveryFee(),
                dish.getNormalPrice(), dish.getSellingPrice(), image.getDetailSection());
    }

    @Override
    public String toString() {
        return "DishDetailResponseDto{" +
                "dishId='" + dishId + '\'' +
                ", topImage='" + topImage + '\'' +
                ", thumbImages='" + thumbImages + '\'' +
                ", productDescription='" + productDescription + '\'' +
                ", point='" + point + '\'' +
                ", deliveryInfo='" + deliveryInfo + '\'' +
                ", deliveryFee='" + deliveryFee + '\'' +
                ", normalPrice='" + normalPrice + '\'' +
                ", sellingPrice='" + sellingPrice + '\'' +
                ", detailSection='" + detailSection + '\'' +
                '}';
    }
}

