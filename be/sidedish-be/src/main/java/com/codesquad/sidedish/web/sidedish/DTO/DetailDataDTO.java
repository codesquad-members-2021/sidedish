package com.codesquad.sidedish.web.sidedish.DTO;

import com.codesquad.sidedish.web.sidedish.Price;

import java.util.Collections;
import java.util.List;
import java.util.stream.Collectors;

public class DetailDataDTO {
    private String topImage;
    private List<String> thumbImages = Collections.emptyList();
    private String productDescription;
    private Price point;
    private String deliveryInfo;
    private Price deliveryFee;
    private List<Price> prices = Collections.emptyList();
    private List<String> detailSection = Collections.emptyList();

    public DetailDataDTO() {
    }

    public DetailDataDTO(String topImage, List<String> thumbImages, String productDescription, Price point, String deliveryInfo, Price deliveryFee, List<Price> prices, List<String> detailSection) {
        this.topImage = topImage;
        this.thumbImages = thumbImages;
        this.productDescription = productDescription;
        this.point = point;
        this.deliveryInfo = deliveryInfo;
        this.deliveryFee = deliveryFee;
        this.prices = prices;
        this.detailSection = detailSection;
    }

    public String getTopImage() {
        return topImage;
    }

    public void setTopImage(String topImage) {
        this.topImage = topImage;
    }

    public List<String> getThumbImages() {
        return thumbImages;
    }

    public void setThumbImages(List<String> thumbImages) {
        this.thumbImages = thumbImages;
    }

    public String getProductDescription() {
        return productDescription;
    }

    public void setProductDescription(String productDescription) {
        this.productDescription = productDescription;
    }

    public String getPoint() {
        return point.getFormattedPrice();
    }

    public void setPoint(Price point) {
        this.point = point;
    }

    public String getDeliveryInfo() {
        return deliveryInfo;
    }

    public void setDeliveryInfo(String deliveryInfo) {
        this.deliveryInfo = deliveryInfo;
    }

    public String getDeliveryFee() {
        return deliveryFee.getFormattedPrice() + " (40,000원 이상 구매 시 무료)";
    }

    public void setDeliveryFee(Price deliveryFee) {
        this.deliveryFee = deliveryFee;
    }

    public List<String> getPrices() {
        return prices.stream()
                .map(Price::getFormattedPrice)
                .collect(Collectors.toList());
    }

    public void setPrices(List<Price> prices) {
        this.prices = prices;
    }

    public List<String> getDetailSection() {
        return detailSection;
    }

    public void setDetailSection(List<String> detailSection) {
        this.detailSection = detailSection;
    }

    public static final class DetailDataDTOBuilder {
        private String topImage;
        private List<String> thumbImages;
        private String productDescription;
        private Price point;
        private String deliveryInfo;
        private Price deliveryFee;
        private List<Price> prices;
        private List<String> detailSection;

        private DetailDataDTOBuilder() {
        }

        public static DetailDataDTOBuilder create() {
            return new DetailDataDTO.DetailDataDTOBuilder();
        }

        public DetailDataDTOBuilder topImage(String topImage) {
            this.topImage = topImage;
            return this;
        }

        public DetailDataDTOBuilder thumbImages(List<String> thumbImages) {
            this.thumbImages = thumbImages;
            return this;
        }

        public DetailDataDTOBuilder productDescription(String productDescription) {
            this.productDescription = productDescription;
            return this;
        }

        public DetailDataDTOBuilder point(Price point) {
            this.point = point;
            return this;
        }

        public DetailDataDTOBuilder deliveryInfo(String deliveryInfo) {
            this.deliveryInfo = deliveryInfo;
            return this;
        }

        public DetailDataDTOBuilder deliveryFee(Price deliveryFee) {
            this.deliveryFee = deliveryFee;
            return this;
        }

        public DetailDataDTOBuilder prices(List<Price> prices) {
            this.prices = prices;
            return this;
        }

        public DetailDataDTOBuilder detailSection(List<String> detailSection) {
            this.detailSection = detailSection;
            return this;
        }

        public DetailDataDTO build() {
            return new DetailDataDTO(topImage, thumbImages, productDescription, point, deliveryInfo, deliveryFee, prices, detailSection);
        }
    }
}
