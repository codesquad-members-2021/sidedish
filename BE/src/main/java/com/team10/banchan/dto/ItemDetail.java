package com.team10.banchan.dto;

import com.fasterxml.jackson.annotation.JsonProperty;

import java.util.List;

public class ItemDetail {

    private final String topImage;
    private final List<String> thumbImages;

    private final String title;
    private final String productDescription;

    private final String point;
    private final String deliveryInfo;

    private final String deliveryFee;
    private final String nPrices;
    private final String sPrices;

    private final List<String> detailSection;
    private final List<String> badges;

    private final Boolean inStock;

    private ItemDetail(String topImage, List<String> thumbImages, String title, String productDescription, String point, String deliveryInfo, String deliveryFee, String nPrices, String sPrices, List<String> detailSection, List<String> badges, Boolean inStock) {
        this.topImage = topImage;
        this.thumbImages = thumbImages;
        this.title = title;
        this.productDescription = productDescription;
        this.point = point;
        this.deliveryInfo = deliveryInfo;
        this.deliveryFee = deliveryFee;
        this.nPrices = nPrices;
        this.sPrices = sPrices;
        this.detailSection = detailSection;
        this.badges = badges;
        this.inStock = inStock;
    }

    public static ItemDetail of(String topImage, List<String> thumbImages,
                                String title, String productDescription,
                                String point, String deliveryInfo,
                                String deliveryFee, String nPrices, String sPrices,
                                List<String> detailSection, List<String> badges, Boolean inStock) {
        return new ItemDetail(topImage, thumbImages, title, productDescription, point, deliveryInfo, deliveryFee, nPrices, sPrices, detailSection, badges, inStock);
    }

    @JsonProperty("top_image")
    public String getTopImage() {
        return topImage;
    }

    @JsonProperty("thumb_image")
    public List<String> getThumbImages() {
        return thumbImages;
    }

    @JsonProperty("title")
    public String getTitle() {
        return title;
    }

    @JsonProperty("product_description")
    public String getProductDescription() {
        return productDescription;
    }

    @JsonProperty("point")
    public String getPoint() {
        return point;
    }

    @JsonProperty("delivery_info")
    public String getDeliveryInfo() {
        return deliveryInfo;
    }

    @JsonProperty("delivery_fee")
    public String getDeliveryFee() {
        return deliveryFee;
    }

    @JsonProperty("n_prices")
    public String getnPrices() {
        return nPrices;
    }

    @JsonProperty("s_prices")
    public String getsPrices() {
        return sPrices;
    }

    @JsonProperty("detail_section")
    public List<String> getDetailSection() {
        return detailSection;
    }

    @JsonProperty("badge")
    public List<String> getBadges() {
        return badges;
    }

    @JsonProperty("in_stock")
    public Boolean getInStock() {
        return inStock;
    }
}


