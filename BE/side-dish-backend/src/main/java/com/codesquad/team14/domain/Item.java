package com.codesquad.team14.domain;

import java.util.ArrayList;
import java.util.List;

public class Item {

    private Long id;
    private String title;
    private String description;
    private int normalPrice;
    private int salePrice;
    private List<Badge> badges;
    private List<DeliveryType> deliveryTypes;
    private List<String> thumbImages;
    private Long categoryId;

    public Item(Long id, String title, String description, int normalPrice, Long categoryId) {
        this.id = id;
        this.title = title;
        this.description = description;
        this.normalPrice = normalPrice;
        this.categoryId = categoryId;
    }

    public Long getId() {
        return id;
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

    public List<Badge> getBadges() {
        return badges;
    }

    public List<DeliveryType> getDeliveryTypes() {
        return deliveryTypes;
    }

    public List<String> getThumbImages() {
        return thumbImages;
    }

    public List<Integer> getPrices() {
        List<Integer> prices = new ArrayList<>();

        if (normalPrice != salePrice) {
            prices.add(normalPrice);
        }
        prices.add(salePrice);

        return prices;
    }

    public int getPoint() {
        return salePrice / 100;
    }

    public Long getCategoryId() {
        return categoryId;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public void setNormalPrice(int normalPrice) {
        this.normalPrice = normalPrice;
    }

    public void setSalePrice(int salePrice) {
        this.salePrice = salePrice;
    }

    public void setBadges(List<Badge> badges) {
        this.badges = badges;
    }

    public void setDeliveryTypes(List<DeliveryType> deliveryTypes) {
        this.deliveryTypes = deliveryTypes;
    }

    public void setThumbImages(List<String> thumbImages) {
        this.thumbImages = thumbImages;
    }
}
