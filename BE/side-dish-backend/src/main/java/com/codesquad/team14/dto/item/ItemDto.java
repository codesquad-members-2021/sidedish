package com.codesquad.team14.dto.item;

import com.codesquad.team14.domain.Item;
import com.codesquad.team14.utils.Badge;

import java.util.List;

public class ItemDto {
    private Long id;
    private String topImage;
    private String deliveryTypes;
    private String title;
    private String description;
    private int nPrice;
    private int sPrice;
    private List<Badge> badges;

    private ItemDto(Long id, String image, String deliveryTypes, String title,
                    String description, int nPrice, int sPrice, List<Badge> badges) {
        this.id = id;
        this.topImage = image;
        this.deliveryTypes = deliveryTypes;
        this.title = title;
        this.description = description;
        this.nPrice = nPrice;
        this.sPrice = sPrice;
        this.badges = badges;
    }

    public static ItemDto from(Item item) {
        return new ItemDto(
                item.getId(),
                item.getImages().split(", ")[0],
                item.getDeliveryTypes().toString(),
                item.getTitle(),
                item.getDescription(),
                item.getNPrice(),
                item.getSPrice(),
                item.getBadges()
        );
    }

    public Long getId() {
        return id;
    }

    public String getTopImage() {
        return topImage;
    }

    public String getDeliveryTypes() {
        return deliveryTypes;
    }

    public String getTitle() {
        return title;
    }

    public String getDescription() {
        return description;
    }

    public int getnPrice() {
        return nPrice;
    }

    public int getsPrice() {
        return sPrice;
    }

    public List<Badge> getBadges() {
        return badges;
    }

}
