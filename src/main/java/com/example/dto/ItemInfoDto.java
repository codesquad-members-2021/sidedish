package com.example.dto;

import com.example.domain.Item;
import com.example.util.Badge;
import com.example.util.DeliveryType;
import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonProperty;

import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;

public class ItemInfoDto {

    @JsonProperty(value = "detail_hash")
    private String id;

    @JsonProperty(value = "image")
    private String image;

    @JsonProperty(value = "alt")
    private String alt;

    @JsonProperty(value = "delivery_type")
    private final List<DeliveryType> deliveryType;

    @JsonProperty(value = "title")
    private String title;

    @JsonProperty(value = "description")
    private String description;

    @JsonProperty(value = "n_price")
    private String price;

    @JsonProperty(value = "s_price")
    private String salePrice;

    @JsonProperty(value = "badge")
    private final List<Badge> badges;

    @JsonIgnore
    private final int stock;

    @JsonIgnore
    private double discountRate;

    public ItemInfoDto(String uuid, String image, String title, String description, int price, String delivery, String badge, int stock) {
        this.id = uuid;
        this.image = parsingImageToThumb(image);
        this.title = title;
        this.alt = title;
        this.description = description;
        this.price = price+"원";
        this.deliveryType = parsingDeliveryType(delivery);
        this.badges = parsingBadges(badge);
        this.salePrice = (int)(price*discountRate)+"원";
        this.stock = stock;
    }

    private String parsingImageToThumb(String image){
        return image.split(",")[0];
    }

    private List<DeliveryType> parsingDeliveryType(String delivery) {
       return Arrays.stream(delivery.split(", ")).map(DeliveryType::valueOf).collect(Collectors.toList());
    }

    private List<Badge> parsingBadges(String badge) {

        if(badge.equals("")){
            badge = "정상가";
        }

        if(badge.equalsIgnoreCase("이벤트특가")){  // TODO. 이벤트특가, 론칭특가에 따른 할인율  :: 추후 분리할지 생각
            discountRate = 0.8;
        }else{
            discountRate = 1;
        }

        return Arrays.stream(badge.split(", ")).map(Badge::valueOf).collect(Collectors.toList());
        
    }

    public void setId(String id) {
        this.id = id;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public void setAlt(String alt) {
        this.alt = alt;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public void setPrice(int price) {
        this.price = price+"";
    }

    public String getId() {
        return id;
    }

    public String getImage() {
        return image;
    }

    public String getAlt() {
        return alt;
    }

    public List<DeliveryType> getDeliveryType() {
        return deliveryType;
    }

    public String getTitle() {
        return title;
    }

    public String getDescription() {
        return description;
    }

    public String getPrice() {
        return price;
    }

    public List<Badge> getBadges() {
        return badges;
    }

    public static ItemInfoDto of (Item item){
        return new ItemInfoDto(item.getId(),item.getImage(),item.getTitle(),item.getDescription(),item.getPrice(),item.getDeliveryTypes(),item.getBadges(),item.getStock());
    }

}
