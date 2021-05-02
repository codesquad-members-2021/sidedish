package com.codesquad.sidedish.SideDish.domain;

import java.time.LocalDateTime;
import java.util.Objects;

public class Dish {
    private final String detailHash;
    private final String image;
    private final String title;
    private final String description;
    private final Integer price;
    private final Integer salePrice;
    private final Integer point;
    private final String deliveryInfo;
    private final Integer deliveryFee;
    private final Long categoryId;
    private Integer quantity;
    private final LocalDateTime currentDateTime;

    public Dish(String detailHash, String image, String title, String description, Integer price, Integer salePrice, Integer point, String deliveryInfo, Integer deliveryFee, Long categoryId, Integer quantity, LocalDateTime currentDateTime) {
        this.detailHash = detailHash;
        this.image = image;
        this.title = title;
        this.description = description;
        this.price = price;
        this.salePrice = salePrice;
        this.point = point;
        this.deliveryInfo = deliveryInfo;
        this.deliveryFee = deliveryFee;
        this.categoryId = categoryId;
        this.quantity = quantity;
        this.currentDateTime = currentDateTime;
    }

    public void order(int count) {
        this.quantity -= count;
    }

    public String getDetailHash() {
        return detailHash;
    }

    public String getImage() {
        return image;
    }

    public String getTitle() {
        return title;
    }

    public String getDescription() {
        return description;
    }

    public Integer getPrice() {
        return price;
    }

    public Integer getSalePrice() {
        return salePrice;
    }

    public Integer getPoint() {
        return point;
    }

    public String getDeliveryInfo() {
        return deliveryInfo;
    }

    public Integer getDeliveryFee() {
        return deliveryFee;
    }

    public Long getCategoryId() {
        return categoryId;
    }

    public Integer getQuantity() {
        return quantity;
    }

    public LocalDateTime getCurrentDateTime() {
        return currentDateTime;
    }

    public boolean refreshable(long lastUpdated) {
        return false;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) {
            return true;
        }
        if (o == null || getClass() != o.getClass()) {
            return false;
        }
        Dish dish = (Dish) o;
        return Objects.equals(detailHash, dish.detailHash) && Objects.equals(image, dish.image) && Objects.equals(title, dish.title) && Objects.equals(description, dish.description) && Objects.equals(price, dish.price) && Objects.equals(salePrice, dish.salePrice) && Objects.equals(point, dish.point) && Objects.equals(deliveryInfo, dish.deliveryInfo) && Objects.equals(deliveryFee, dish.deliveryFee) && Objects.equals(categoryId, dish.categoryId) && Objects.equals(quantity, dish.quantity) && Objects.equals(currentDateTime, dish.currentDateTime);
    }

    @Override
    public int hashCode() {
        return Objects.hash(detailHash, image, title, description, price, salePrice, point, deliveryInfo, deliveryFee, categoryId, quantity, currentDateTime);
    }
}
