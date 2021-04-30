package com.codesquad.sidedish.domain;

import org.springframework.data.annotation.Id;
import org.springframework.data.relational.core.mapping.Column;
import org.springframework.data.relational.core.mapping.Embedded;

public class Dish {

    @Id
    private String id;

    private String alt;
    private String deliveryType;
    private String title;
    private String description;
    private String normalPrice;
    private String sellingPrice;
    private String badge;
    private Long categoryId;
    private String deliveryInfo;
    private String deliveryFee;
    private int stock;
    private String point;

    @Embedded.Nullable
    private Image image;

    private Dish() {
    }

    public Dish(String id, String alt, String deliveryType, String title, String description, String normalPrice,
                String sellingPrice, String badge, Long categoryId, String deliveryInfo, String deliveryFee, int stock,
                String point, Image image) {
        this.id = id;
        this.alt = alt;
        this.deliveryType = deliveryType;
        this.title = title;
        this.description = description;
        this.normalPrice = normalPrice;
        this.sellingPrice = sellingPrice;
        this.badge = badge;
        this.categoryId = categoryId;
        this.deliveryInfo = deliveryInfo;
        this.deliveryFee = deliveryFee;
        this.stock = stock;
        this.point = point;
        this.image = image;
    }

    public String getId() {
        return id;
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

    public String getDeliveryInfo() {
        return deliveryInfo;
    }

    public String getDeliveryFee() {
        return deliveryFee;
    }

    public int getStock() {
        return stock;
    }

    public String getPoint() {
        return point;
    }

    public Image getImage() {
        return image;
    }

    @Override
    public String toString() {
        return "Dish{" +
                "id='" + id + '\'' +
                ", alt='" + alt + '\'' +
                ", deliveryType='" + deliveryType + '\'' +
                ", title='" + title + '\'' +
                ", description='" + description + '\'' +
                ", normalPrice='" + normalPrice + '\'' +
                ", sellingPrice='" + sellingPrice + '\'' +
                ", badge='" + badge + '\'' +
                ", categoryId=" + categoryId +
                ", deliveryInfo='" + deliveryInfo + '\'' +
                ", deliveryFee='" + deliveryFee + '\'' +
                ", stock=" + stock +
                ", point='" + point + '\'' +
                ", image=" + image +
                '}';
    }
}
