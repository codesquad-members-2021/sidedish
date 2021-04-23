package com.codesquad.sidedish.domain;

import com.fasterxml.jackson.annotation.JsonCreator;
import org.springframework.data.annotation.Id;
import org.springframework.data.relational.core.mapping.Column;

public class Dish {

    @Id
    private String id;

    private String mainImage;
    private String alt;
    private String deliveryType;
    private String title;
    private String description;
    private String normalPrice;
    private String sellingPrice;
    private String badge;

    @Column(value = "category")
    private Long categoryId;
    private String topImage;
    private String thumbImages;
    private String deliveryInfo;
    private String deliveryFee;
    private String detailSection;
    private int stock;
    private String point;

    private Dish(){
    }

    public Dish(String id, String mainImage, String alt, String deliveryType, String title, String description,
                String normalPrice, String sellingPrice, String badge, Long categoryId, String topImage, String thumbImages,
                 String deliveryInfo, String deliveryFee, String detailSection, int stock, String point) {
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
        this.topImage = topImage;
        this.thumbImages = thumbImages;
        this.deliveryInfo = deliveryInfo;
        this.deliveryFee = deliveryFee;
        this.detailSection = detailSection;
        this.stock = stock;
        this.point = point;
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

    public String getTopImage() {
        return topImage;
    }

    public String getThumbImages() {
        return thumbImages;
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

    public String getPoint() {
        return point;
    }
}
