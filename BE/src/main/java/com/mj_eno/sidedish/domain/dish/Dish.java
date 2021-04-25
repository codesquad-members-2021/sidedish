package com.mj_eno.sidedish.domain.dish;

import org.springframework.data.annotation.Id;

public class Dish {

    @Id
    private Long id;
    private String hash;
    private String alt;
    private String title;
    private String description;
    private int nPrice;
    private int sPrice;
    private int point;
    private int stock;
    private String deliveryType;
    private String deliveryInfo;
    private String deliveryFee;
    private int menuCategoryId;
    private Integer bestMenuCategoryId;

    public Dish(String hash, int stock) {
        this.hash = hash;
        this.stock = stock;
    }

    public void order(Dish dish) {
        this.stock -= dish.stock;
    }

    public boolean orderCheck(Dish dish) {
        int orderQuantity = dish.getStock();
        return (orderQuantity >= 0) && (stock - orderQuantity >= 0);
    }

    public Long getId() {
        return id;
    }

    public String getHash() {
        return hash;
    }

    public String getAlt() {
        return alt;
    }

    public String getTitle() {
        return title;
    }

    public String getDescription() {
        return description;
    }

    public int getnPrice() {
        return nPrice;
    }

    public int getsPrice() {
        return sPrice;
    }

    public int getPoint() {
        return point;
    }

    public int getStock() {
        return stock;
    }

    public String getDeliveryType() {
        return deliveryType;
    }

    public String getDeliveryInfo() {
        return deliveryInfo;
    }

    public String getDeliveryFee() {
        return deliveryFee;
    }

    public int getMenuCategoryId() {
        return menuCategoryId;
    }

    public int getBestMenuCategoryId() {
        return bestMenuCategoryId;
    }

    @Override
    public String toString() {
        return "Dish{" +
                "title='" + title + '\'' +
                ", description='" + description + '\'' +
                ", menuCategoryId=" + menuCategoryId +
                ", bestMenuCategoryId=" + bestMenuCategoryId +
                '}';
    }
}
