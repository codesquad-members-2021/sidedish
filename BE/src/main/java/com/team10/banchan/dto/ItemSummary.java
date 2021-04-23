package com.team10.banchan.dto;

import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonProperty;

import java.util.List;

public class ItemSummary {

    private final Long id;

    private final String image;
    private final String alt;

    private final List<String> deliveryType;

    private final String title;
    private final String description;

    private final String nPrice;
    private final String sPrice;

    private final List<String> badge;

    private ItemSummary(Long id,
                        String image, String alt,
                        List<String> deliveryType,
                        String title, String description,
                        String nPrice, String sPrice,
                        List<String> badge) {
        this.id = id;
        this.image = image;
        this.alt = alt;
        this.deliveryType = deliveryType;
        this.title = title;
        this.description = description;
        this.nPrice = nPrice;
        this.sPrice = sPrice;
        this.badge = badge;
    }

    public static ItemSummary of(Long id,
                                 String image, String alt,
                                 List<String> deliveryType,
                                 String title, String description,
                                 String nPrice, String sPrice,
                                 List<String> badge) {
        return new ItemSummary(id, image, alt, deliveryType, title, description, nPrice, sPrice, badge);
    }

    @JsonProperty("detail_hash")
    public Long getId() {
        return id;
    }

    @JsonProperty("image")
    public String getImage() {
        return image;
    }

    @JsonProperty("alt")
    public String getAlt() {
        return alt;
    }

    @JsonProperty("delivery_type")
    public List<String> getDeliveryType() {
        return deliveryType;
    }

    @JsonProperty("title")
    public String getTitle() {
        return title;
    }

    @JsonProperty("description")
    public String getDescription() {
        return description;
    }

    @JsonInclude(JsonInclude.Include.NON_NULL)
    @JsonProperty("n_price")
    public String getnPrice() {
        return nPrice;
    }

    @JsonProperty("s_price")
    public String getsPrice() {
        return sPrice;
    }

    @JsonProperty("badge")
    public List<String> getBadge() {
        return badge;
    }

}
