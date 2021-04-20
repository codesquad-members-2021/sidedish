package com.example.dto;

import com.example.util.Badge;
import com.example.util.DeliveryType;
import com.fasterxml.jackson.annotation.JsonProperty;

import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;

public class ItemInfoDto {

    @JsonProperty(value = "detail_hash")
    private String id;

    private String image;
    private String alt;

    @JsonProperty(value = "delivery_type")
    private final List<DeliveryType> deliveryType;

    private String title;
    private String description;

    @JsonProperty(value = "n_price")
    private int price;

    @JsonProperty(value = "badge")
    private final List<Badge> badges;

    public ItemInfoDto(String uuid, String image, String title, String description, int price, String delivery, String badge) {
        this.id = uuid;
        this.image = image;
        this.title = title;
        this.alt = title;
        this.description = description;
        this.price = price;
        this.deliveryType = parsingDeliveryType(delivery);
        this.badges = parsingBadges(badge);
    }

    private List<DeliveryType> parsingDeliveryType(String delivery) {
       return Arrays.stream(delivery.split(",")).map(DeliveryType::valueOf).collect(Collectors.toList());
    }

    private List<Badge> parsingBadges(String badge) {
        return Arrays.stream(badge.split(",")).map(Badge::valueOf).collect(Collectors.toList());
    }

    public void setId(String id) {
        this.id = id;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public void setAlt(String alt) {
        this.alt = alt;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public String getId() {
        return id;
    }

    public String getImage() {
        return image;
    }

    public String getAlt() {
        return alt;
    }

    public List<DeliveryType> getDeliveryType() {
        return deliveryType;
    }

    public String getTitle() {
        return title;
    }

    public String getDescription() {
        return description;
    }

    public int getPrice() {
        return price;
    }

    public List<Badge> getBadges() {
        return badges;
    }

}
