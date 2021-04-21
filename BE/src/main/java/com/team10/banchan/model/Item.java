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

    public ItemDetail itemDetail() {
        return ItemDetail.of(
                topImage.getTopImage(),
                thumbImagesUrl(),
                description.getTitle(),
                description.getDescription(),
                prices.getPoints(),
                deliveryInfo(),
                prices.getDeliveryFee(),
                prices.getnPrice(),
                prices.getsPrice(),
                detailSection(),
                badge()
        );
    }

    public ItemSummary itemSummary() {
        return ItemSummary.of(
                id,
                topImage.getTopImage(),
                topImage.getAlt(),
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
                .map(DeliveryType::getDetail)
                .reduce((x, y) -> String.join(" / ", x, y)) +
                " [" +
                deliveryDays.stream()
                        .map(DeliveryDay::korean)
                        .reduce((x, y) -> String.join(" · ", x, y)) +
                "] 수령 가능한 상품입니다.";
    }

    private List<String> detailSection() {
        return detailSections.stream()
                .map(DetailSection::getUrl)
                .collect(Collectors.toList());
    }

    private List<String> deliveryType() {
        return deliveryTypes.stream()
                .map(DeliveryType::getName)
                .collect(Collectors.toList());
    }

    private List<String> badge() {
        return badges.stream()
                .map(Badge::name)
                .collect(Collectors.toList());
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
