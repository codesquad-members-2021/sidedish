package com.codesquad.team14.domain;

import com.codesquad.team14.utils.Badge;
import com.codesquad.team14.utils.DeliveryType;
import org.springframework.data.annotation.Id;

import java.util.List;
import java.util.Objects;

public class Item {
    private static final String DELIVERY_FEE_POLICY = "2,500원 (40,000원 이상 구매 시 무료)";

    @Id
    private Long id;

    private String title;
    private String description;
    private int nPrice;
    private int sPrice;
    //private List<Badge> badges;
    private String badges;
    //private List<DeliveryType> deliveryTypes;
    private String deliveryTypes;
    private String images;
    private Category category;

    public Item(String title, String description, int nPrice, int sPrice, Category category) {
        this.title = title;
        this.description = description;
        this.nPrice = nPrice;
        this.sPrice = sPrice;
        this.category = category;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Long getId() {
        return id;
    }

    public String getTitle() {
        return title;
    }

    public String getDescription() {
        return description;
    }

    public int getNPrice() {
        return nPrice;
    }

    public int getSPrice() {
        return sPrice;
    }

    //public List<Badge> getBadges() {
    //    return badges;
    //}

    //public List<DeliveryType> getDeliveryTypes() {
    //    return deliveryTypes;
    //}

    public String getImages() {
        return images;
    }

    public Category getCategory() {
        return category;
    }

    /*
    public String getDeliveryInfo() {
        StringBuilder deliverInfo = new StringBuilder();
        for (int i = 0; i < deliveryTypes.size(); i++) {
            deliverInfo.append(deliveryTypes.get(i).getDetail());
            if (i != deliveryTypes.size() - 1) {
                deliverInfo.append(" / ");
            }
        }
        return deliverInfo.toString();
    }*/

    public String getDeliveryFeePolicy() {
        return DELIVERY_FEE_POLICY;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public void setnPrice(int nPrice) {
        this.nPrice = nPrice;
    }

    public void setsPrice(int sPrice) {
        this.sPrice = sPrice;
    }

    //public void setBadges(List<Badge> badges) {
    //    this.badges = badges;
    //}

    //public void setDeliveryTypes(List<DeliveryType> deliveryTypes) {
    //    this.deliveryTypes = deliveryTypes;
    //}

    public void setImages(String images) {
        this.images = images;
    }

    public void setCategory(Category category) {
        this.category = category;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Item item = (Item) o;
        return Objects.equals(id, item.id) && Objects.equals(category, item.category);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, category);
    }
}
