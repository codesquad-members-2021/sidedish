package com.codesquad.sidedish.web.sidedish;

import com.fasterxml.jackson.annotation.JsonInclude;

import java.util.List;

public class ItemDTO {
    private String detailHash;
    private String image;
    private String alt;
    private List<String> deliveryType;
    private String title;
    private String description;
    @JsonInclude(JsonInclude.Include.NON_EMPTY)
    private Price nPrice;
    @JsonInclude(JsonInclude.Include.NON_EMPTY)
    private Price sPrice;
    @JsonInclude(JsonInclude.Include.NON_NULL)
    private List<String> badge;

    public ItemDTO() {
    }

    public ItemDTO(String detailHash, String image, String alt, List<String> deliveryType, String title, String description, Price nPrice, Price sPrice, List<String> badge) {
        this.detailHash = detailHash;
        this.image = image;
        this.alt = alt;
        this.deliveryType = deliveryType;
        this.title = title;
        this.description = description;
        this.nPrice = nPrice;
        this.sPrice = sPrice;
        this.badge = badge;
    }

    public String getDetailHash() {
        return detailHash;
    }

    public void setDetailHash(String detailHash) {
        this.detailHash = detailHash;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getAlt() {
        return alt;
    }

    public void setAlt(String alt) {
        this.alt = alt;
    }

    public List<String> getDeliveryType() {
        return deliveryType;
    }

    public void setDeliveryType(List<String> deliveryType) {
        this.deliveryType = deliveryType;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getnPrice() {
        return nPrice != null ? nPrice.getFormattedPrice() : "";
    }

    public void setnPrice(Price nPrice) {
        this.nPrice = nPrice;
    }

    public String getsPrice() {
        return sPrice != null ? sPrice.getFormattedPrice() : "";
    }

    public void setsPrice(Price sPrice) {
        this.sPrice = sPrice;
    }

    public List<String> getBadge() {
        return badge;
    }

    public void setBadge(List<String> badge) {
        this.badge = badge;
    }

    public static final class ItemDTOBuilder {
        private String detailHash;
        private String image;
        private String alt;
        private List<String> deliveryType;
        private String title;
        private String description;
        private Price nPrice;
        private Price sPrice;
        private List<String> badge;

        private ItemDTOBuilder() {
        }

        public static ItemDTOBuilder create() {
            return new ItemDTOBuilder();
        }

        public ItemDTOBuilder detailHash(String detailHash) {
            this.detailHash = detailHash;
            return this;
        }

        public ItemDTOBuilder image(String image) {
            this.image = image;
            return this;
        }

        public ItemDTOBuilder alt(String alt) {
            this.alt = alt;
            return this;
        }

        public ItemDTOBuilder deliveryType(List<String> deliveryType) {
            this.deliveryType = deliveryType;
            return this;
        }

        public ItemDTOBuilder title(String title) {
            this.title = title;
            return this;
        }

        public ItemDTOBuilder description(String description) {
            this.description = description;
            return this;
        }

        public ItemDTOBuilder nPrice(Price nPrice) {
            this.nPrice = nPrice;
            return this;
        }

        public ItemDTOBuilder sPrice(Price sPrice) {
            this.sPrice = sPrice;
            return this;
        }

        public ItemDTOBuilder badge(List<String> badge) {
            this.badge = badge;
            return this;
        }

        public ItemDTO build() {
            return new ItemDTO(detailHash, image, alt, deliveryType, title, description, nPrice, sPrice, badge);
        }
    }
}
