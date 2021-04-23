package com.codesquad.sidedish.web.sidedish;

import java.util.List;
import java.util.stream.Collectors;

public class DetailDTO {
    private String hash;
    private Data data;

    public DetailDTO() {
    }

    public DetailDTO(String hash, Data data) {
        this.hash = hash;
        this.data = data;
    }

    public String getHash() {
        return hash;
    }

    public void setHash(String hash) {
        this.hash = hash;
    }

    public Data getData() {
        return data;
    }

    public void setData(Data data) {
        this.data = data;
    }


    public static final class DetailDTOBuilder {
        private String hash;
        private Data data;

        private DetailDTOBuilder() {
        }

        public static DetailDTOBuilder create() {
            return new DetailDTOBuilder();
        }

        public DetailDTOBuilder hash(String hash) {
            this.hash = hash;
            return this;
        }

        public DetailDTOBuilder data(Data data) {
            this.data = data;
            return this;
        }

        public DetailDTO build() {
            return new DetailDTO(hash, data);
        }
    }

    public static class Data {
        private String topImage;
        private List<String> thumbImages;
        private String productDescription;
        private Price point;
        private String deliveryInfo;
        private Price deliveryFee;
        private List<Price> prices;
        private List<String> detailSection;

        public Data() {
        }

        public Data(String topImage, List<String> thumbImages, String productDescription, Price point, String deliveryInfo, Price deliveryFee, List<Price> prices, List<String> detailSection) {
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

        public static final class DataBuilder {
            private String topImage;
            private List<String> thumbImages;
            private String productDescription;
            private Price point;
            private String deliveryInfo;
            private Price deliveryFee;
            private List<Price> prices;
            private List<String> detailSection;

            private DataBuilder() {
            }

            public static DataBuilder create() {
                return new DataBuilder();
            }

            public DataBuilder topImage(String topImage) {
                this.topImage = topImage;
                return this;
            }

            public DataBuilder thumbImages(List<String> thumbImages) {
                this.thumbImages = thumbImages;
                return this;
            }

            public DataBuilder productDescription(String productDescription) {
                this.productDescription = productDescription;
                return this;
            }

            public DataBuilder point(Price point) {
                this.point = point;
                return this;
            }

            public DataBuilder deliveryInfo(String deliveryInfo) {
                this.deliveryInfo = deliveryInfo;
                return this;
            }

            public DataBuilder deliveryFee(Price deliveryFee) {
                this.deliveryFee = deliveryFee;
                return this;
            }

            public DataBuilder prices(List<Price> prices) {
                this.prices = prices;
                return this;
            }

            public DataBuilder detailSection(List<String> detailSection) {
                this.detailSection = detailSection;
                return this;
            }

            public Data build() {
                return new Data(topImage, thumbImages, productDescription, point, deliveryInfo, deliveryFee, prices, detailSection);
            }
        }

    }
}
