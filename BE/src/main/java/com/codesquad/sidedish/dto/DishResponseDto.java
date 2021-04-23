package com.codesquad.sidedish.dto;

import com.codesquad.sidedish.domain.Dish;

public class DishResponseDto {
    private final String id;
    private final String mainImage;
    private final String alt;
    private final String deliveryType;
    private final String title;
    private final String description;
    private final String normalPrice;
    private final String sellingPrice;
    private final String badge;
    private final Long categoryId;


    private DishResponseDto(String id, String mainImage, String alt, String deliveryType,
                            String title, String description, String normalPrice, String sellingPrice,
                            String badge, Long categoryId) {
        this.id = id;
        this.mainImage = mainImage;
        this.alt = alt;
        this.deliveryType = deliveryType;
        this.title = title;
        this.description = description;
        this.normalPrice = normalPrice;
        this.sellingPrice = sellingPrice;
        this.badge = badge;
        this.categoryId = categoryId;
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

    public Long getCategoryId() {
        return categoryId;
    }

    public static DishResponseDto of(Dish dish) {
        return new DishResponseDto(dish.getId(), dish.getMainImage(), dish.getAlt(),
                dish.getDeliveryType(), dish.getTitle(), dish.getDescription(),
                dish.getNormalPrice(), dish.getSellingPrice(), dish.getBadge(),
                dish.getCategoryId());
    }
}
