package com.codesquad.sidedish.domain;

import org.springframework.data.annotation.Id;

import java.util.Collections;
import java.util.List;

public class Item {

    @Id
    private String detailHash;

    private String image;
    private String alt;
    private List<String> deliveryType;
    private String title;
    private String description;
    private Integer normalPrice;
    private Integer salePrice;
    private List<String> badge;

    private String topImage;//x
    private List<String> thumbImages;
    private String productDescription;
    private Integer point;
    private String deliveryInfo;
    private String deliveryFee;
    private List<Integer> prices;//x
    private List<String> detailSection;

    private Item() {
    }

    public Item(String image, String alt, String deliveryType, String title, String description, Integer normalPrice, Integer salePrice, String badge, String topImage, String thumbImages, String productDescription, Integer point, String deliveryInfo, String deliveryFee, Integer prices, String detailSection) {
        this.image = image;
        this.alt = alt;
        this.deliveryType = Collections.singletonList(deliveryType);
        this.title = title;
        this.description = description;
        this.normalPrice = normalPrice;
        this.salePrice = salePrice;
        this.badge = Collections.singletonList(badge);
        this.topImage = topImage;
        this.thumbImages = Collections.singletonList(thumbImages);
        this.productDescription = productDescription;
        this.point = point;
        this.deliveryInfo = deliveryInfo;
        this.deliveryFee = deliveryFee;
        this.prices = Collections.singletonList(prices);
        this.detailSection = Collections.singletonList(detailSection);
    }

    public String getDetailHash() {
        return detailHash;
    }

    public String getImage() {
        return image;
    }

    public String getAlt() {
        return alt;
    }

    public List<String> getDeliveryType() {
        return deliveryType;
    }

    public String getTitle() {
        return title;
    }

    public String getDescription() {
        return description;
    }

    public Integer getNormalPrice() {
        return normalPrice;
    }

    public Integer getSalePrice() {
        return salePrice;
    }

    public List<String> getBadge() {
        return badge;
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

    public Integer getPoint() {
        return point;
    }

    public String getDeliveryInfo() {
        return deliveryInfo;
    }

    public String getDeliveryFee() {
        return deliveryFee;
    }

    public List<Integer> getPrices() {
        return prices;
    }

    public List<String> getDetailSection() {
        return detailSection;
    }
}
