package com.codesquad.sidedish.entity;

import org.springframework.data.annotation.Id;

public class DishDetail {

    @Id
    private String dishId;
    private String topImage;
    private String thumbImages;
    private String productDescription;
    private int point;
    private String deliveryInfo;
    private String deliveryFee;
    private int normalPrice;
    private int sellingPrice;
    private String detailSection;

    private DishDetail() {
    }

    public DishDetail(String dishId, String topImage, String thumbImages, String productDescription, int point,
                      String deliveryInfo, String deliveryFee, int normalPrice, int sellingPrice, String detailSection) {
        this.dishId = dishId;
        this.topImage = topImage;
        this.thumbImages = thumbImages;
        this.productDescription = productDescription;
        this.point = point;
        this.deliveryInfo = deliveryInfo;
        this.deliveryFee = deliveryFee;
        this.normalPrice = normalPrice;
        this.sellingPrice = sellingPrice;
        this.detailSection = detailSection;
    }

    public String getDishId() {
        return dishId;
    }

    public void setDishId(String dishId) {
        this.dishId = dishId;
    }

    public String getTopImage() {
        return topImage;
    }

    public void setTopImage(String topImage) {
        this.topImage = topImage;
    }

    public String getThumbImages() {
        return thumbImages;
    }

    public void setThumbImages(String thumbImages) {
        this.thumbImages = thumbImages;
    }

    public String getProductDescription() {
        return productDescription;
    }

    public void setProductDescription(String productDescription) {
        this.productDescription = productDescription;
    }

    public int getPoint() {
        return point;
    }

    public void setPoint(int point) {
        this.point = point;
    }

    public String getDeliveryInfo() {
        return deliveryInfo;
    }

    public void setDeliveryInfo(String deliveryInfo) {
        this.deliveryInfo = deliveryInfo;
    }

    public String getDeliveryFee() {
        return deliveryFee;
    }

    public void setDeliveryFee(String deliveryFee) {
        this.deliveryFee = deliveryFee;
    }

    public int getNormalPrice() {
        return normalPrice;
    }

    public void setNormalPrice(int normalPrice) {
        this.normalPrice = normalPrice;
    }

    public int getSellingPrice() {
        return sellingPrice;
    }

    public void setSellingPrice(int sellingPrice) {
        this.sellingPrice = sellingPrice;
    }

    public String getDetailSection() {
        return detailSection;
    }

    public void setDetailSection(String detailSection) {
        this.detailSection = detailSection;
    }
}
