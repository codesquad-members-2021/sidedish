package com.codesquad.sidedish.dto;

public class ItemDto {

    private String detailHash;
    private String image;
    private String alt;
    private String deliveryType;
    private String title;
    private String description;
    private Integer normalPrice;
    private Integer salePrice;
    private String badge;

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

    public String getDetailHash() {
        return detailHash;
    }

    public String getImage() {
        return image;
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

    public Integer getNormalPrice() {
        return normalPrice;
    }

    public Integer getSalePrice() {
        return salePrice;
    }

    public String getBadge() {
        return badge;
    }
}
