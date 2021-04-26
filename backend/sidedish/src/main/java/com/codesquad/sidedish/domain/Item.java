package com.codesquad.sidedish.domain;

import com.codesquad.sidedish.dto.DetailItemDto;
import com.codesquad.sidedish.dto.ItemDto;
import org.springframework.data.annotation.Id;
import org.springframework.data.annotation.PersistenceConstructor;

public class Item {

    @Id
    private String detailHash;

    private String image;
    private String alt;
    private String deliveryType;// = new ArrayList<>();
    private String title;
    private String description;
    private Integer normalPrice;
    private Integer salePrice;
    private String badge;// = new ArrayList<>();

    private String topImage;//x
    private String thumbImages;// = new ArrayList<>();
    private String productDescription;
    private Integer point;
    private String deliveryInfo;
    private String deliveryFee;
    private String prices;// = new ArrayList<>();
    private String detailSection;// = new ArrayList<>();
    private int stock;

    @PersistenceConstructor
    public Item(String detailHash, String image, String alt, String deliveryType, String title, String description, Integer normalPrice,
                Integer salePrice, String badge, String topImage, String thumbImages, String productDescription, Integer point,
                String deliveryInfo, String deliveryFee, String prices, String detailSection, int stock) {
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

    public String getDetailHash() {
        return detailHash;
    }

    public boolean checkStock(int orderCount) {
        if(this.stock < orderCount) {
            return false;
        }
        return true;
    }

    public static ItemDto createItemDto(Item item) {
        return new ItemDto(item.detailHash, item.image, item.alt, item.deliveryType, item.title,
                item.description, item.normalPrice, item.salePrice, item.badge);
    }

    public static DetailItemDto createDetailItemDto(Item item) {
        return new DetailItemDto(item.detailHash, item.topImage, item.thumbImages, item.productDescription,
                item.point, item.deliveryInfo, item.deliveryFee, item.prices, item.detailSection);
    }

    public void purchase(int orderCount) {
        if(!checkStock(orderCount)) {
        }
        this.stock -= orderCount;
    }

}
