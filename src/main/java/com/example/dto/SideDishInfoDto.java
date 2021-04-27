package com.example.dto;

import com.example.domain.Item;
import com.fasterxml.jackson.annotation.JsonProperty;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;

public class SideDishInfoDto {

    @JsonProperty("top_image")
    private String topImage;

    @JsonProperty("thum_images")
    private String thumbImage;

    @JsonProperty("product_description")
    private String description;

    @JsonProperty("point")
    private String point;

    @JsonProperty("delivery_info")
    private String deliveryInfo;

    @JsonProperty("delivery_fee")
    private String deliveryFee;

    @JsonProperty("price")
    private List<String> prices;

    @JsonProperty("detail_section")
    private String[] detailSection;

    public SideDishInfoDto(String topImage, String thumbImage, String description, String point, String deliveryInfo, String deliveryFee, List<String> prices, String[] detailSection) {
        this.topImage = topImage;
        this.thumbImage = thumbImage;
        this.description = description;
        this.point = point;
        this.deliveryInfo = deliveryInfo;
        this.deliveryFee = deliveryFee;
        this.prices = prices;
        this.detailSection = detailSection;
    }

    public String getTopImage() {
        return topImage.split(",")[0];
    }

    public void setTopImage(String topImage) {
        this.topImage = topImage;
    }

    public String[] getThumbImage() {
        return thumbImage.split(",");
    }

    public void setThumbImage(String thumbImage) {
        this.thumbImage = thumbImage;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getPoint() {
        return point;
    }

    public void setPoint(String point) {
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

    public List<String> getPrice() {
        return prices;
    }

    public void setPrice(List<String> price) {
        this.prices = price;
    }

    public String[] getDetailSection() {
        return detailSection;
    }

    public void setDetailSection(String[] detailSection) {
        this.detailSection = detailSection;
    }

    public List<String> parsingDetailSection(String detailSection){
        return Arrays.stream(detailSection.split(",")).collect(Collectors.toList());
    }

    public static SideDishInfoDto of(Item item){

        String point = item.getPrice()*0.01+"원";
        String deliveryInfo = "서울 경기 새벽배송 / 전국택배 (제주 및 도서산간 불가) [월 · 화 · 수 · 목 · 금 · 토] 수령 가능한 상품입니다.";
        String deliveryFee = "2,500원 (40,000원 이상 구매 시 무료)";
        List<String> prices = new ArrayList<>();

        prices.add(item.getPrice()+"원");
        prices.add(item.getPrice()+"원"); // 나중에 할인율 적용

        return new SideDishInfoDto(item.getImage(),item.getImage(),item.getDescription(),point , deliveryInfo, deliveryFee, prices, item.getDetailSection().split(","));
    }

}
