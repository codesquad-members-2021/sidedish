package com.codesquad.sidedish.SideDish.dto;

import com.codesquad.sidedish.SideDish.domain.Dish;
import com.codesquad.sidedish.SideDish.domain.Image;

import java.util.List;
import java.util.stream.Collectors;

public class DishDetailDto {
    private final List<String> thumbImages;
    private final Integer point;
    private final String deliveryInfo;
    private Integer deliveryFee;
    private final List<String> detailImages;

    private DishDetailDto(Builder builder) {
        this.thumbImages = builder.thumbImages;
        this.point = builder.point;
        this.deliveryInfo = builder.deliveryInfo;
        this.deliveryFee = builder.deliveryFee;
        this.detailImages = builder.detailImages;
    }

    public static DishDetailDto from(Dish dish) {
        return new Builder()
                .thumbImages(dish.getImages().stream().map(Image::getImageUrl).collect(Collectors.toList())) // TODO:
                .point(dish.getPoint())
                .deliveryInfo(dish.getDeliveryInfo())
                .deliveryFee(dish.getDeliveryFee())
                .detailImages(dish.getImages().stream().map(Image::getImageUrl).collect(Collectors.toList())) // TODO:
                .build();
    }

    private static class Builder {
        private List<String> thumbImages;
        private Integer point;
        private String deliveryInfo;
        private Integer deliveryFee;
        private List<String> detailImages;

        public DishDetailDto build() {
            return new DishDetailDto(this);
        }


        public Builder thumbImages(List<String> thumbImages) {
            this.thumbImages = thumbImages;
            return this;
        }

        public Builder point(Integer point) {
            this.point = point;
            return this;
        }

        public Builder deliveryInfo(String deliveryInfo) {
            this.deliveryInfo = deliveryInfo;
            return this;
        }

        public Builder deliveryFee(Integer deliveryFee) {
            this.deliveryFee = deliveryFee;
            return this;
        }

        public Builder detailImages(List<String> detailSection) {
            this.detailImages = detailSection;
            return this;
        }
    }

    public List<String> getThumbImages() {
        return thumbImages;
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

    public List<String> getDetailImages() {
        return detailImages;
    }
}
