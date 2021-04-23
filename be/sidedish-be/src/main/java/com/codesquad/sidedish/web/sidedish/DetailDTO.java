package com.codesquad.sidedish.web.sidedish;

import java.text.NumberFormat;
import java.text.ParseException;
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
        private long point;
        private String deliveryInfo;
        private long deliveryFee;
        private List<Long> prices;
        private List<String> detailSection;

        public Data() {
        }

        public Data(String topImage, List<String> thumbImages, String productDescription, long point, String deliveryInfo, long deliveryFee, List<Long> prices, List<String> detailSection) {
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
            return NumberFormat.getInstance().format(point);
        }

        public void setPoint(String point) throws ParseException {
            this.point = NumberFormat.getInstance().parse(point).longValue();
        }

        public String getDeliveryInfo() {
            return deliveryInfo;
        }

        public void setDeliveryInfo(String deliveryInfo) {
            this.deliveryInfo = deliveryInfo;
        }

        public long getDeliveryFee() {
            return deliveryFee;
        }

        public void setDeliveryFee(String deliveryFee) throws ParseException {
            this.deliveryFee = NumberFormat.getInstance().parse(deliveryFee).longValue();
        }

        public List<Long> getPrices() {
            return prices;
        }

        public void setPrices(List<String> prices) {
            this.prices = prices.stream()
                    .map(this::parsePrice)
                    .collect(Collectors.toList());
        }

        private long parsePrice(String price) {
            try {
                return NumberFormat.getInstance().parse(price).longValue();
            } catch (ParseException e) {
                throw new IllegalArgumentException("Error occured while parsing prices, price : " + price, e);
            }
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
            private long point;
            private String deliveryInfo;
            private long deliveryFee;
            private List<Long> prices;
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

            public DataBuilder point(long point) {
                this.point = point;
                return this;
            }

            public DataBuilder deliveryInfo(String deliveryInfo) {
                this.deliveryInfo = deliveryInfo;
                return this;
            }

            public DataBuilder deliveryFee(long deliveryFee) {
                this.deliveryFee = deliveryFee;
                return this;
            }

            public DataBuilder prices(List<Long> prices) {
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
