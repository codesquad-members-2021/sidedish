package com.codesquad.sidedish.domain;

import com.codesquad.sidedish.dto.DetailItemDto;
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
    private Integer deliveryFee;
    private List<Integer> prices;//x
    private List<String> detailSection;

    private int stock;

    Item(String detailHash, String image, String alt, List<String> deliveryType, String title, String description, Integer normalPrice,
         Integer salePrice, List<String> badge, String topImage, List<String> thumbImages, String productDescription, Integer point,
         String deliveryInfo, Integer deliveryFee, List<Integer> prices, List<String> detailSection, int stock) {
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

    public int getStock() {
        return stock;
    }

    public static ItemDto createItemDto(Item item) {
        return new ItemDto(item.detailHash, item.image, item.alt, item.deliveryType, item.title,
                item.description, item.normalPrice, item.salePrice, item.badge);
    }

    public static DetailItemDto createDetailItemDto(Item item) {
        return new DetailItemDto(item.detailHash, item.topImage, item.thumbImages, item.productDescription,
                item.point, item.deliveryInfo, item.deliveryFee, item.prices, item.detailSection);
    }

}
