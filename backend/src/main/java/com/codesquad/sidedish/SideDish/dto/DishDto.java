package com.codesquad.sidedish.SideDish.dto;

import java.util.List;

public class DishDto {
    private final String detailHash;
    private final String image;
    private final List<String> deliveryType;
    private final String title;
    private final String description;
    private final int nPrice;
    private final String sPrice;
    private final List<String> badge;

    private DishDto(Builder builder) {
        this.detailHash = builder.detailHash;
        this.image = builder.image;
        this.deliveryType = builder.deliveryType;
        this.title = builder.title;
        this.description = builder.description;
        this.nPrice = builder.nPrice;
        this.sPrice = builder.sPrice;
        this.badge = builder.badge;
    }

    public static class Builder {
        private String detailHash;
        private String image;
        private List<String> deliveryType;
        private String title;
        private String description;
        private int nPrice;
        private String sPrice;
        private List<String> badge;

        public DishDto build() {
            return new DishDto(this);
        }


        public Builder detailHash(String detailHash) {
            this.detailHash = detailHash;
            return this;
        }

        public Builder image(String image) {
            this.image = image;
            return this;
        }

        public Builder deliveryType(List<String> deliveryType) {
            this.deliveryType = deliveryType;
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

        public Builder nPrice(int nPrice) {
            this.nPrice = nPrice;
            return this;
        }

        public Builder sPrice(String sPrice) {
            this.sPrice = sPrice;
            return this;
        }

        public Builder badge(List<String> badge) {
            this.badge = badge;
            return this;
        }
    }

    public String getDetailHash() {
        return detailHash;
    }

    public String getImage() {
        return image;
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

    public int getnPrice() {
        return nPrice;
    }

    public String getsPrice() {
        return sPrice;
    }

    public List<String> getBadge() {
        return badge;
    }
}
