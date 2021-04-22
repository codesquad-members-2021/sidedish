package com.codesquad.sidedish.web.sidedish;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.PropertyNamingStrategy;

import java.io.File;
import java.io.IOException;
import java.lang.reflect.Type;
import java.text.NumberFormat;
import java.text.ParseException;
import java.util.List;

public class ItemDTO {
    private String detailHash;
    private String image;
    private String alt;
    private List<String> deliveryType;
    private String title;
    private String description;
    private long nPrice;
    private long sPrice;
    private List<String> badge;

    public ItemDTO() {
    }

    public ItemDTO(String detailHash, String image, String alt, List<String> deliveryType, String title, String description, long nPrice, long sPrice, List<String> badge) {
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

    public static List<ItemDTO> listFrom(String jsonString) throws JsonProcessingException {
        ObjectMapper objectMapper = new ObjectMapper();
        objectMapper.setPropertyNamingStrategy(PropertyNamingStrategy.SNAKE_CASE);

        return objectMapper.readValue(
                jsonString,
                new TypeReference<List<ItemDTO>>() {
                }
        );
    }

    public static List<ItemDTO> listForm(File jsonFile) throws IOException {
        ObjectMapper objectMapper = new ObjectMapper();
        objectMapper.setPropertyNamingStrategy(PropertyNamingStrategy.SNAKE_CASE);

        return objectMapper.readValue(
                jsonFile,
                new TypeReference<List<ItemDTO>>() {
        }
        );
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
        return NumberFormat.getInstance().format(nPrice);
    }

    public void setnPrice(String nPrice) throws ParseException {
        this.nPrice = NumberFormat.getInstance().parse(nPrice).longValue();
    }

    public String getsPrice() {
        return NumberFormat.getInstance().format(sPrice);
    }

    public void setsPrice(String sPrice) throws ParseException {
        this.sPrice = NumberFormat.getInstance().parse(sPrice).longValue();
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
        private long nPrice;
        private long sPrice;
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

        public ItemDTOBuilder nPrice(long nPrice) {
            this.nPrice = nPrice;
            return this;
        }

        public ItemDTOBuilder sPrice(long sPrice) {
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
