package com.codesquad.sidedish.SideDish.dto;

import java.util.List;

public class DishDetailDto {
    private final String topImage;
    private final List<String> thumbImages;
    private final String productDescription;
    private final int point;
    private final String deliveryInfo;
    private final String deliveryFee;
    private final List<String> prices;
    private final List<String> detailSection;

    private DishDetailDto(Builder builder) {
        this.topImage = builder.topImage;
        this.thumbImages = builder.thumbImages;
        this.productDescription = builder.productDescription;
        this.point = builder.point;
        this.deliveryInfo = builder.deliveryInfo;
        this.deliveryFee = builder.deliveryFee;
        this.prices = builder.prices;
        this.detailSection = builder.detailSection;
    }

    public static class Builder {
        private String topImage;
        private List<String> thumbImages;
        private String productDescription;
        private int point;
        private String deliveryInfo;
        private String deliveryFee;
        private List<String> prices;
        private List<String> detailSection;


        public DishDetailDto build() {
            return new DishDetailDto(this);
        }

        public Builder topImage(String topImage) {
            this.topImage = topImage;
            return this;
        }

        public Builder thumbImages(List<String> thumbImages) {
            this.thumbImages = thumbImages;
            return this;
        }

        public Builder productDescription(String productDescription) {
            this.productDescription = productDescription;
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

        public Builder deliveryFee(String deliveryFee) {
            this.deliveryFee = deliveryFee;
            return this;
        }

        public Builder prices(List<String> prices) {
            this.prices = prices;
            return this;
        }

        public Builder detailSection(List<String> detailSection) {
            this.detailSection = detailSection;
            return this;
        }
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

    public int getPoint() {
        return point;
    }

    public String getDeliveryInfo() {
        return deliveryInfo;
    }

    public String getDeliveryFee() {
        return deliveryFee;
    }

    public List<String> getPrices() {
        return prices;
    }

    public List<String> getDetailSection() {
        return detailSection;
    }
}
