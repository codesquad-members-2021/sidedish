package com.team15.sidedish.dto;

import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.team15.sidedish.domain.Delivery;
import com.team15.sidedish.domain.Image;

import java.util.List;
import java.util.stream.Collectors;

public class DataDTO {
    private String title;

    @JsonProperty("top_image")
    private String topImage;

    @JsonProperty("thumb_images")
    private List<String> thumbImages;

    private String description;
    private int point;

    @JsonProperty("delivery_info")
    private String deliveryInfo;

    @JsonProperty("devlivery_fee")
    private Integer deliveryFee;

    @JsonProperty("delivery_condition")
    private Integer deliveryCondition;

    @JsonProperty("normal_price")
    @JsonInclude(JsonInclude.Include.NON_NULL)
    private Integer normalPrice;

    @JsonProperty("special_price")
    private Integer specialPrice;

    @JsonProperty("detail_images")
    private List<String> detailImages;

    @JsonInclude(JsonInclude.Include.NON_NULL)
    private String[] badge;

    private DataDTO(String title, String topImage, List<Image> thumbImages, String description, int point, String deliveryInfo, Integer deliveryFee, Integer deliveryCondition, Integer normalPrice, Integer specialPrice, List<Image> detailImages, String[] badge) {
        this.title = title;
        this.topImage = topImage;
        this.thumbImages = thumbImages.stream().map(image -> image.getImageUrl()).collect(Collectors.toList());
        this.description = description;
        this.point = point;
        this.deliveryInfo = deliveryInfo;
        this.deliveryFee = deliveryFee;
        this.deliveryCondition = deliveryCondition;
        this.normalPrice = normalPrice;
        this.specialPrice = specialPrice;
        this.detailImages = detailImages.stream().map(image -> image.getImageUrl()).collect(Collectors.toList());
        this.badge = badge;
    }

    public static DataDTO of(DishDAO dishDAO, Delivery delivery, List<Image> thumbImages, List<Image> detailImages) {
        return new DataDTO(dishDAO.getTitle(), dishDAO.getImage(), thumbImages, dishDAO.getDescription(), (int) Math.round(dishDAO.getSpecialPrice() * 0.01),
                delivery.makeDeliveryInfo(delivery.isMonday()), delivery.getDeliveryFee(), delivery.getDeliveryCondition(),
                dishDAO.getNormalPrice(), dishDAO.getSpecialPrice(), detailImages, dishDAO.getBadge()
        );
    }

    public String getTitle() {
        return title;
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

    public Integer getNormalPrice() {
        return normalPrice;
    }

    public Integer getSpecialPrice() {
        return specialPrice;
    }

    public List<String> getDetailImages() {
        return detailImages;
    }

    public String[] getBadge() {
        return badge;
    }
}
