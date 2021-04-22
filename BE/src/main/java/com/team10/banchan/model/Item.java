package com.team10.banchan.model;

import com.team10.banchan.dto.ItemDetail;
import com.team10.banchan.dto.ItemSummary;
import org.springframework.data.annotation.Id;
import org.springframework.data.relational.core.mapping.Embedded;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.stream.Collectors;

public class Item {

    @Id
    private final Long id;
    private final Long section;
    private final Long category;

    @Embedded.Nullable
    private final ItemImages itemImages;

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
         ItemImages itemImages,
         Description description,
         Prices prices,
         Integer stock,
         List<DetailSection> detailSections, List<ThumbImage> thumbImages,
         Set<Badge> badges, Set<DeliveryType> deliveryTypes, Set<DeliveryDay> deliveryDays) {
        this.id = id;
        this.section = section;
        this.category = category;
        this.itemImages = itemImages;
        this.description = description;
        this.prices = prices;
        this.stock = stock;
        this.detailSections = detailSections;
        this.thumbImages = thumbImages;
        this.badges = badges;
        this.deliveryTypes = deliveryTypes;
        this.deliveryDays = deliveryDays;
    }

    public static Item newItem(Long section, Long category,
                               ItemImages itemImages, Description description,
                               Prices prices,
                               Integer stock) {
        return new Item(null, section, category,
                itemImages,
                description,
                prices,
                stock,
                new ArrayList<>(), new ArrayList<>(), new HashSet<>(), new HashSet<>(), new HashSet<>());
    }

    public Long getId() {
        return id;
    }

    public void addDetailSection(DetailSection detailSection) {
        this.detailSections.add(detailSection);
    }

    public void addThumbImage(ThumbImage thumbImage) {
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

    public ItemDetail itemDetail() {
        return ItemDetail.of(
                itemImages.getTopImage(),
                thumbImagesUrl(),
                description.getTitle(),
                description.getDescription(),
                prices.getPoints(),
                deliveryInfo(),
                prices.getDeliveryFee(),
                prices.getnPrice(),
                prices.getsPrice(),
                detailSection(),
                badge(),
                inStock()
        );
    }

    public ItemSummary itemSummary() {
        return ItemSummary.of(
                id,
                itemImages.getImage(),
                itemImages.getAlt(),
                deliveryType(),
                description.getTitle(),
                description.getDescription(),
                prices.getnPrice(),
                prices.getsPrice(),
                badge()
        );
    }

    private List<String> thumbImagesUrl() {
        return thumbImages.stream()
                .map(ThumbImage::getUrl)
                .collect(Collectors.toList());
    }

    private String deliveryInfo() {
        return deliveryTypes.stream()
                .sorted()
                .map(DeliveryType::getDetail)
                .reduce((x, y) -> String.join(" / ", x, y))
                .orElse("") +
                " [" +
                deliveryDays.stream()
                        .sorted()
                        .map(DeliveryDay::korean)
                        .reduce((x, y) -> String.join(" · ", x, y))
                        .orElse("") +
                "] 수령 가능한 상품입니다.";
    }

    private List<String> detailSection() {
        return detailSections.stream()
                .map(DetailSection::getUrl)
                .collect(Collectors.toList());
    }

    private List<String> deliveryType() {
        return deliveryTypes.stream()
                .sorted()
                .map(DeliveryType::getName)
                .collect(Collectors.toList());
    }

    private List<String> badge() {
        return badges.stream()
                .sorted()
                .map(Badge::getName)
                .collect(Collectors.toList());
    }

    private Boolean inStock() {
        return stock > 0;
    }
}
