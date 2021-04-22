package com.codesquad.sidedish.domain;

import com.codesquad.sidedish.dto.ItemDto;
import org.springframework.data.annotation.Id;

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

    private int stock;

    Item(String detailHash, String image, String alt, List<String> deliveryType, String title, String description, Integer normalPrice, Integer salePrice, List<String> badge, String topImage, List<String> thumbImages, String productDescription, Integer point, String deliveryInfo, String deliveryFee, List<Integer> prices, List<String> detailSection, int stock) {
        this.detailHash = detailHash;
        this.image = image;
        this.alt = alt;
        this.deliveryType = deliveryType;
        this.title = title;
        this.description = description;
        this.normalPrice = normalPrice;
        this.salePrice = salePrice;
        this.badge = badge;
        this.topImage = topImage;
        this.thumbImages = thumbImages;
        this.productDescription = productDescription;
        this.point = point;
        this.deliveryInfo = deliveryInfo;
        this.deliveryFee = deliveryFee;
        this.prices = prices;
        this.detailSection = detailSection;
        this.stock = stock;
    }

    public static ItemDto of(Item item) {
        
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

    public int getStock() {
        return stock;
    }
}
