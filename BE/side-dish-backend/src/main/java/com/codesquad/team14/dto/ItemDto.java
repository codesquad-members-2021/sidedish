package com.codesquad.team14.dto;

import com.codesquad.team14.domain.Item;

public class ItemDto {
    private Long id;
    private String topImage;
    private String deliveryTypes;
    private String title;
    private String description;
    private int normalPrice;
    private int salePrice;
    private String badges;

    private ItemDto(Long id, String image, String deliveryTypes, String title,
                    String description, int normalPrice, int salePrice, String badges) {
        this.id = id;
        this.topImage = image;
        this.deliveryTypes = deliveryTypes;
        this.title = title;
        this.description = description;
        this.normalPrice = normalPrice;
        this.salePrice = salePrice;
        this.badges = badges;
    }

    public static ItemDto from(Item item) {
        return new ItemDto(
                item.getId(),
                item.getTopImage(),
                item.getDeliveryTypes(),
                item.getTitle(),
                item.getDescription(),
                item.getNormalPrice(),
                item.getSalePrice(),
                item.getBadges()
        );
    }

    public Long getId() {
        return id;
    }

    public String getTopImage() {
        return topImage;
    }

    public String getDeliveryTypes() {
        return deliveryTypes;
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

    public int getSalePrice() {
        return salePrice;
    }

    public String getBadges() {
        return badges;
    }

    public void setBadges(String badges) {
        this.badges = badges;
    }
}
