package com.team10.banchan.model;

import org.springframework.data.annotation.Id;
import org.springframework.data.relational.core.mapping.Embedded;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

public class Item {
    @Id
    private final Long id;
    private final Long section;
    private final Long category;

    @Embedded.Nullable
    private final TopImage topImage;

    @Embedded.Nullable
    private final Description description;

    @Embedded.Nullable
    private final Prices prices;

    private final Integer stock;

    private final List<DetailSection> detailSections;
    private final List<ThumbImage> thumbImages;
    private final Set<Badge> badges;
    private final Set<DeliveryType> deliveryTypes;
    private final Set<DeliveryDay> deliveryDays;

    Item(Long id, Long section, Long category,
         TopImage topImage,
         Description description,
         Prices prices,
         Integer stock,
         List<DetailSection> detailSections, List<ThumbImage> thumbImages,
         Set<Badge> badges, Set<DeliveryType> deliveryTypes, Set<DeliveryDay> deliveryDays) {
        this.id = id;
        this.section = section;
        this.category = category;
        this.topImage = topImage;
        this.description = description;
        this.prices = prices;
        this.stock = stock;
        this.detailSections = detailSections;
        this.thumbImages = thumbImages;
        this.badges = badges;
        this.deliveryTypes = deliveryTypes;
        this.deliveryDays = deliveryDays;
    }

    public Long getId() {
        return id;
    }

    public Long getSection() {
        return section;
    }

    public Long getCategory() {
        return category;
    }

    public TopImage getTopImage() {
        return topImage;
    }

    public Description getDescription() {
        return description;
    }

    public Prices getPrices() {
        return prices;
    }
    public Integer getStock() {
        return stock;
    }

    public List<DetailSection> getDetailSections() {
        return detailSections;
    }

    public List<ThumbImage> getThumbImages() {
        return thumbImages;
    }

    public Set<Badge> getBadges() {
        return badges;
    }

    public Set<DeliveryType> getDeliveryTypes() {
        return deliveryTypes;
    }

    public Set<DeliveryDay> getDeliveryDays() {
        return deliveryDays;
    }

    public void addDetailSection (DetailSection detailSection) {
        this.detailSections.add(detailSection);
    }

    public void addThumbImage (ThumbImage thumbImage) {
        this.thumbImages.add(thumbImage);
    }

    public void addBadge(Badge badge) {
        this.badges.add(badge);
    }

    public void addDeliveryType(DeliveryType deliveryType) {
        this.deliveryTypes.add(deliveryType);
    }

    public void addDeliveryDay(DeliveryDay deliveryDay) {
        this.deliveryDays.add(deliveryDay);
    }

    public static Item newItem(Long section, Long category,
                               TopImage topImage, Description description,
                               Prices prices,
                               Integer stock) {
        return new Item(null, section, category,
                topImage,
                description,
                prices,
                stock,
                new ArrayList<>(), new ArrayList<>(), new HashSet<>(), new HashSet<>(), new HashSet<>());
    }
}
