package com.codesquad.sidedish.dto;

public class DetailItemDto {

    private String detailHash;
    private String topImage;
    private String thumbImages;
    private String productDescription;
    private Integer point;
    private String deliveryInfo;
    private Integer deliveryFee;
    private Integer prices;
    private String detailSection;

    public DetailItemDto(String detailHash, String topImage, String thumbImages, String productDescription, Integer point, String deliveryInfo, Integer deliveryFee, Integer prices, String detailSection) {
        this.detailHash = detailHash;
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

    public String getThumbImages() {
        return thumbImages;
    }

    public String getProductDescription() {
        return productDescription;
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

    public Integer getPrices() {
        return prices;
    }

    public String getDetailSection() {
        return detailSection;
    }


}
