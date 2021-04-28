package com.codesquad.sidedish.SideDish.dto;

import com.codesquad.sidedish.SideDish.domain.dish.Dish;
import com.codesquad.sidedish.SideDish.domain.image.Image;

import java.util.List;
import java.util.stream.Collectors;

public class DishDetailDto {
    private final List<String> thumbImages;
    private final int point;
    private final String deliveryInfo;
    private int deliveryFee;
    private final List<String> detailImages;

    public DishDetailDto(Dish dish, List<Image> thumbImages, List<Image> detailImages) {
        this.thumbImages = thumbImages.stream().map(Image::getImageUrl).collect(Collectors.toList());
        this.point = dish.getPoint();
        this.deliveryInfo = dish.getDeliveryInfo();
        this.deliveryFee = dish.getDeliveryFee();
        this.detailImages = detailImages.stream().map(Image::getImageUrl).collect(Collectors.toList());
    }

    public List<String> getThumbImages() {
        return thumbImages;
    }

    public int getPoint() {
        return point;
    }

    public String getDeliveryInfo() {
        return deliveryInfo;
    }

    public int getDeliveryFee() {
        return deliveryFee;
    }

    public List<String> getDetailImages() {
        return detailImages;
    }
}
