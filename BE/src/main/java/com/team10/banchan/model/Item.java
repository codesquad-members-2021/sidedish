package com.team10.banchan.model;


import org.springframework.data.annotation.Id;

import java.math.BigDecimal;
import java.util.List;
import java.util.Set;

public class Item {
    @Id
    private Long id;
    private Long section;
    private Long category;

    private String alt;
    private String topImage;
    private String title;
    private String description;
    private BigDecimal nPrice;
    private BigDecimal sPrice;
    private BigDecimal deliveryFee;
    private Integer stock;

    private List<DetailSection> detailSections;
    private List<ThumbImage> thumbImages;
    private Set<Badge> badges;
    private Set<DeliveryType> deliveryTypes;
    private Set<DeliveryDay> deliveryDays;
}
