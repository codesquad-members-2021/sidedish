package com.codesquad.sidedish.SideDish.domain;

import java.util.List;

public class Dish {
    private final String detailHash;
    private final String image;
    private final String title;
    private final String description;
    private final List<String> deliveryTypes;
    private final int price;
    private final int salePrice;
    private final List<String> badges;

    private final List<String> thumbImages;
    private final int point;
    private final String deliveryInfo;
    private final int deliveryFee;
    private final List<String> detailImages;

    private final long categoryId;
    private final int quantity;

    private Dish(Builder builder) {
        this.detailHash = builder.detailHash;
        this.image = builder.image;
        this.deliveryTypes = builder.deliveryTypes;
        this.title = builder.title;
        this.description = builder.description;
        this.price = builder.price;
        this.salePrice = builder.salePrice;
        this.badges = builder.badges;

        this.thumbImages = builder.thumbImages;
        this.point = builder.point;
        this.deliveryInfo = builder.deliveryInfo;
        this.deliveryFee = builder.deliveryFee;
        this.detailImages = builder.detailImages;

        this.categoryId = builder.categoryId;
        this.quantity = builder.quantity;
    }

    public static class Builder {
        private String detailHash;
        private String image;
        private String title;
        private String description;
        private List<String> deliveryTypes;
        private int price;
        private int salePrice;
        private List<String> badges;

        private List<String> thumbImages;
        private int point;
        private String deliveryInfo;
        private int deliveryFee;
        private List<String> detailImages;

        private long categoryId;
        private int quantity;

        public Dish build() {
            return new Dish(this);
        }

        public Builder detailHash(String detailHash) {
            this.detailHash = detailHash;
            return this;
        }

        public Builder image(String image) {
            this.image = image;
            return this;
        }

        public Builder title(String title) {
            this.title = title;
            return this;
        }

        public Builder description(String description) {
            this.description = description;
            return this;
        }

        public Builder deliveryTypes(List<String> deliveryTypes) {
            this.deliveryTypes = deliveryTypes;
            return this;
        }

        public Builder price(int price) {
            this.price = price;
            return this;
        }

        public Builder salePrice(int salePrice) {
            this.salePrice = salePrice;
            return this;
        }

        public Builder badges(List<String> badges) {
            this.badges = badges;
            return this;
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

        public Builder categoryId(long categoryId) {
            this.categoryId = categoryId;
            return this;
        }

        public Builder quantity(int quantity) {
            this.quantity = quantity;
            return this;
        }
    }


    public String getDetailHash() {
        return detailHash;
    }

    public String getImage() {
        return image;
    }

    public String getTitle() {
        return title;
    }

    public String getDescription() {
        return description;
    }

    public List<String> getDeliveryTypes() {
        return deliveryTypes;
    }

    public int getPrice() {
        return price;
    }

    public int getSalePrice() {
        return salePrice;
    }

    public List<String> getBadges() {
        return badges;
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


    public long getCategoryId() {
        return categoryId;
    }

    public int getQuantity() {
        return quantity;
    }
}
