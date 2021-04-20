package com.codesquad.sidedish.dto;

import com.codesquad.sidedish.domain.Item;

import java.util.List;

public class ItemDto {

    private String detailHash;
    private String image;
    private String alt;
    private List<String> deliveryType;
    private String title;
    private String description;
    private Integer normalPrice;
    private Integer salePrice;
    private List<String> badge;

    public ItemDto(String detailHash, String image, String alt, List<String> deliveryType, String title, String description, Integer normalPrice, Integer salePrice, List<String> badge) {
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

    public List<String> getDeliveryType() {
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

    public List<String> getBadge() {
        return badge;
    }

    public static ItemDto of(Item item) {
        return new ItemDto(item.getDetailHash(), item.getImage(), item.getAlt(), item.getDeliveryType(), item.getTitle(), item.getDescription(), item.getNormalPrice(),
        item.getSalePrice(), item.getBadge());
    }
}
