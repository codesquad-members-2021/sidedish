package com.codesquad.sidedish.dto;

import com.codesquad.sidedish.domain.Dish;
import com.fasterxml.jackson.annotation.JsonProperty;

public class DishResponseDto {

    private String id;

    @JsonProperty("image")
    private String mainImage;
    private String alt;
    private String deliveryType;
    private String title;
    private String description;
    private String normalPrice;
    private String sellingPrice;
    private String badge;


    private DishResponseDto(String id, String mainImage, String alt, String deliveryType,
                            String title, String description, String normalPrice, String sellingPrice,
                            String badge) {
        this.id = id;
        this.mainImage = mainImage;
        this.alt = alt;
        this.deliveryType = deliveryType;
        this.title = title;
        this.description = description;
        this.normalPrice = normalPrice;
        this.sellingPrice = sellingPrice;
        this.badge = badge;
    }

    public String getId() {
        return id;
    }

    public String getMainImage() {
        return mainImage;
    }

    public String getAlt() {
        return alt;
    }

    public String getDeliveryType() {
        return deliveryType;
    }

    public String getTitle() {
        return title;
    }

    public String getDescription() {
        return description;
    }

    public String getNormalPrice() {
        return normalPrice;
    }

    public String getSellingPrice() {
        return sellingPrice;
    }

    public String getBadge() {
        return badge;
    }


    public static DishResponseDto of(Dish dish) {
        return new DishResponseDto(dish.getId(), dish.getMainImage(), dish.getAlt(),
                dish.getDeliveryType(), dish.getTitle(), dish.getDescription(),
                dish.getNormalPrice(), dish.getSellingPrice(), dish.getBadge());
    }

    @Override
    public String toString() {
        return "DishResponseDto{" +
                "id='" + id + '\'' +
                ", mainImage='" + mainImage + '\'' +
                ", alt='" + alt + '\'' +
                ", deliveryType='" + deliveryType + '\'' +
                ", title='" + title + '\'' +
                ", description='" + description + '\'' +
                ", normalPrice='" + normalPrice + '\'' +
                ", sellingPrice='" + sellingPrice + '\'' +
                ", badge='" + badge + '\'' +
                '}';
    }
}
