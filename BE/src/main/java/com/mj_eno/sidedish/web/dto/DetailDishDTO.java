package com.mj_eno.sidedish.web.dto;

import com.mj_eno.sidedish.domain.dish.Dish;

import java.util.List;

public class DetailDishDTO {

    private final String topImage;
    private final List<String> thumbImages;
    private final String productDescription;
    private final int point;
    private final String deliveryInfo;
    private final String deliveryFee;
    private final int nPrice;
    private final int sPrice;
    private final int stock;
    private final List<String> detailSection;

    public DetailDishDTO(Dish dish, String topImage, List<String> thumbImages, List<String> detailSection) {
        this.topImage = topImage;
        this.thumbImages = thumbImages;
        this.productDescription = dish.getDescription();
        this.point = dish.getPoint();
        this.deliveryInfo = dish.getDeliveryInfo();
        this.deliveryFee = dish.getDeliveryFee();
        this.nPrice = dish.getnPrice();
        this.sPrice = dish.getsPrice();
        this.stock = dish.getStock();
        this.detailSection = detailSection;
    }

    public String getTopImage() {
        return topImage;
    }

    public List<String> getThumbImages() {
        return thumbImages;
    }

    public String getProductDescription() {
        return productDescription;
    }

    public int getPoint() {
        return point;
    }

    public String getDeliveryInfo() {
        return deliveryInfo;
    }

    public String getDeliveryFee() {
        return deliveryFee;
    }

    public int getnPrice() {
        return nPrice;
    }

    public int getsPrice() {
        return sPrice;
    }

    public int getStock() {
        return stock;
    }

    public List<String> getDetailSection() {
        return detailSection;
    }
}
