package com.mj_eno.sidedish.domain.dish;

import org.springframework.data.annotation.Id;
import org.springframework.data.relational.core.mapping.Embedded;

public class Dish {

    @Id
    private Long id;
    private String hash;
    private String alt;
    private String title;
    private String description;
    @Embedded.Nullable
    private Price price;
    private int stock;
    @Embedded.Nullable
    private Delivery delivery;
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

    public Price getPrice() {
        return price;
    }

    public int getnPrice() {
        return price.getnPrice();
    }

    public int getsPrice() {
        return price.getsPrice();
    }

    public int getPoint() {
        return price.getPoint();
    }

    public int getStock() {
        return stock;
    }

    public Delivery getDelivery() {
        return delivery;
    }

    public String getDeliveryType() {
        return delivery.getDeliveryType();
    }

    public String getDeliveryInfo() {
        return delivery.getDeliveryInfo();
    }

    public String getDeliveryFee() {
        return delivery.getDeliveryFee();
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
