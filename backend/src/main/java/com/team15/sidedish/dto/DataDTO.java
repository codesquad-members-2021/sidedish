package com.team15.sidedish.dto;

import com.team15.sidedish.domain.Delivery;
import com.team15.sidedish.domain.Image;

import java.util.List;
import java.util.stream.Collectors;

public class DataDTO {
    private String topImage;
    private List<String> thumbImages;
    private String description;
    private int point;
    private String deliveryInfo;
    private Integer deliveryFee;
    private Integer deliveryCondition;
    private Integer[] prices;
    private List<String> detailImages;

    private DataDTO(String topImage, List<Image> thumbImages, String description, int point, String deliveryInfo, Integer deliveryFee, Integer deliveryCondition, Integer[] prices, List<Image> detailImages) {
        this.topImage = topImage;
        this.thumbImages = thumbImages.stream().map(image -> image.getImageUrl()).collect(Collectors.toList());
        this.description = description;
        this.point = point;
        this.deliveryInfo = deliveryInfo;
        this.deliveryFee = deliveryFee;
        this.deliveryCondition = deliveryCondition;
        this.prices = prices;
        this.detailImages = detailImages.stream().map(image -> image.getImageUrl()).collect(Collectors.toList());
    }

    public static DataDTO of(DishDTO dishDTO, Delivery delivery, List<Image> thumbImages, List<Image> detailImages) {
        return new DataDTO(dishDTO.getImage(), thumbImages, dishDTO.getDescription(), (int) Math.round(dishDTO.getSpecialPrice() * 0.01),
                delivery.makeDeliveryInfo(delivery.isMonday()), delivery.getDeliveryFee(), delivery.getDeliveryCondition(),
                dishDTO.makePriceArray(), detailImages
        );
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

    public int getPoint() {
        return point;
    }

    public String getDeliveryInfo() {
        return deliveryInfo;
    }

    public Integer getDeliveryFee() {
        return deliveryFee;
    }

    public Integer getDeliveryCondition() {
        return deliveryCondition;
    }

    public Integer[] getPrices() {
        return prices;
    }

    public List<String> getDetailImages() {
        return detailImages;
    }


}
