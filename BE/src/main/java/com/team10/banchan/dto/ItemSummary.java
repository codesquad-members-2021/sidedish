package com.team10.banchan.dto;

import java.util.List;

public class ItemSummary {

    private Long id;
    private String image;
    private String alt;
    private List<String> deliveryType;
    private String title;
    private String description;
    private String nPrice;
    private String sPrice;
    private List<String> badge;

    private ItemSummary(Long id, String image, String alt, List<String> deliveryType, String title, String description, String nPrice, String sPrice, List<String> badge) {
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

}
