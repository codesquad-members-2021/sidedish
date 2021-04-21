package com.team10.banchan.dto;

import java.math.BigDecimal;
import java.util.List;

public class ItemDetailDto {

    private String topImage;
    private List<String> thumbImages;
    private String productDescription;
    private BigDecimal point;
    private String deliveryInfo;
    private BigDecimal deliveryFee;
    private BigDecimal prices;
    private List<String> detailSection;

    public ItemDetailDto(String topImage, List<String> thumbImages, String productDescription, BigDecimal point, String deliveryInfo, BigDecimal deliveryFee, BigDecimal prices, List<String> detailSection) {
        this.topImage = topImage;
        this.thumbImages = thumbImages;
        this.productDescription = productDescription;
        this.point = point;
        this.deliveryInfo = deliveryInfo;
        this.deliveryFee = deliveryFee;
        this.prices = prices;
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

    public BigDecimal getPoint() {
        return point;
    }

    public String getDeliveryInfo() {
        return deliveryInfo;
    }

    public BigDecimal getDeliveryFee() {
        return deliveryFee;
    }

    public BigDecimal getPrices() {
        return prices;
    }

    public List<String> getDetailSection() {
        return detailSection;
    }
}


