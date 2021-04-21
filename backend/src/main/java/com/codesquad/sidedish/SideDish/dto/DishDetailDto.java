package com.codesquad.sidedish.SideDish.dto;

import com.codesquad.sidedish.SideDish.domain.Dish;

import java.util.List;

public class DishDetailDto {
    private final List<String> thumbImages;
    private final int point;
    private final String deliveryInfo;
    private int deliveryFee;
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
                .thumbImages(dish.getThumbImages())
                .point(dish.getPoint())
                .deliveryInfo(dish.getDeliveryInfo())
                .deliveryFee(dish.getDeliveryFee())
                .detailImages(dish.getDetailImages())
                .build();
    }

    private static class Builder {
        private List<String> thumbImages;
        private int point;
        private String deliveryInfo;
        private int deliveryFee;
        private List<String> detailImages;

        public DishDetailDto build() {
            return new DishDetailDto(this);
        }


        public Builder thumbImages(List<String> thumbImages) {
            this.thumbImages = thumbImages;
            return this;
        }

        public Builder point(int point) {
            this.point = point;
            return this;
        }

        public Builder deliveryInfo(String deliveryInfo) {
            this.deliveryInfo = deliveryInfo;
            return this;
        }

        public Builder deliveryFee(int deliveryFee) {
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
