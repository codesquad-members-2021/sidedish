package com.codesquad.sidedish.domain;

import org.springframework.data.annotation.Id;

public class Dish {

    @Id
    private String id;

    private String mainImage;

    private String alt;

    private String deliveryType;

    private String title;

    private String description;

    private int normalPrice;

    private int sellingPrice;

    private String badge;

    private Long categoryId;

    private String topImage;

    private String thumbImages;

    private String productDescription;

    private String deliveryInfo;

    private String deliveryFee;

    private String detailSection;

    private int stock;

    private int point;

    public Dish(String id, String mainImage, String alt, String deliveryType, String title, String description,
                int normalPrice, int sellingPrice, String badge, Long categoryId, String topImage, String thumbImages,
                String productDescription, String deliveryInfo, String deliveryFee, String detailSection, int stock, int point) {
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
        this.productDescription = productDescription;
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

    public int getNormalPrice() {
        return normalPrice;
    }

    public int getSellingPrice() {
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
}
