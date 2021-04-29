package com.codesquad.team14.domain;

import org.springframework.data.annotation.Id;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Objects;

public class Item {
    private static final String DELIVERY_FEE_POLICY = "2,500원 (40,000원 이상 구매 시 무료)";
    private static final String SEPARATOR = ",";

    @Id
    private Long id;

    private String title;
    private String description;
    private int normalPrice;
    private int salePrice;
    private String badges;
    private String deliveryTypes;
    private String images;
    private String category;

    public Item(String title, String description, int normalPrice, int salePrice, String category) {
        this.title = title;
        this.description = description;
        this.normalPrice = normalPrice;
        this.salePrice = salePrice;
        this.category = category;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public int getNormalPrice() {
        return normalPrice;
    }

    public void setNormalPrice(int normalPrice) {
        this.normalPrice = normalPrice;
    }

    public int getSalePrice() {
        return salePrice;
    }

    public void setSalePrice(int salePrice) {
        this.salePrice = salePrice;
    }

    public String getBadges() {
        return badges;
    }

    public void setBadges(String badges) {
        this.badges = badges;
    }

    public String getDeliveryTypes() {
        return deliveryTypes;
    }

    public void setDeliveryTypes(String deliveryTypes) {
        this.deliveryTypes = deliveryTypes;
    }

    public void setImages(String images) {
        this.images = images;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public static String getDeliveryFeePolicy() {
        return DELIVERY_FEE_POLICY;
    }

    public String getTopImage() {
        if (this.images == null) {
            return "";
        }
        return this.images.split(SEPARATOR)[0];
    }

    public List<String> getImages() {
        if (this.images == null) {
            return new ArrayList<>();
        }
        return Arrays.asList(this.images.split(SEPARATOR));
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Item item = (Item) o;
        return Objects.equals(id, item.id);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id);
    }
}
