package com.codesquad.team14.dto;

import com.codesquad.team14.domain.Item;

import java.util.List;

public class DetailedItemDto {
    private final Long id;
    private final String topImage;
    private final List<String> thumbImages;
    private final String description;
    private final String deliveryInfo;
    private final String deliveryFee;
    private final int normalPrice;
    private final int salePrice;
    private final int point;

    public DetailedItemDto(Long id, String topImage, List<String> thumbImages, String description, String deliveryInfo,
                           String deliveryFee, int normalPrice, int salePrice, int point) {
        this.id = id;
        this.topImage = topImage;
        this.thumbImages = thumbImages;
        this.description = description;
        this.deliveryInfo = deliveryInfo;
        this.deliveryFee = deliveryFee;
        this.normalPrice = normalPrice;
        this.salePrice = salePrice;
        this.point = point;
    }

    public static DetailedItemDto from(Item item) {
        return new DetailedItemDto(
                item.getId(),
                item.getTopImage(),
                item.getImages(),
                item.getDescription(),
                item.getDeliveryTypes(),
                Item.getDeliveryFeePolicy(),
                item.getNormalPrice(),
                item.getSalePrice(),
                item.getSalePrice() / 100
        );
    }

    public Long getId() {
        return id;
    }

    public String getTopImage() {
        return topImage;
    }

    public List<String> getThumbImages() {
        return thumbImages;
    }

    public String getDescription() {
        return description;
    }

    public String getDeliveryInfo() {
        return deliveryInfo;
    }

    public String getDeliveryFee() {
        return deliveryFee;
    }

    public int getNormalPrice() {
        return normalPrice;
    }

    public int getSalePrice() {
        return salePrice;
    }

    public int getPoint() {
        return point;
    }
}
