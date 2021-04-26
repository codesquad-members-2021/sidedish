package codsquad.team17.sidedish.dto;

import codsquad.team17.sidedish.domain.Image;
import codsquad.team17.sidedish.domain.Item;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonPropertyOrder;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

@JsonPropertyOrder({"item_id", "title", "description", "n_price", "s_price", "badge", "image", "delivery_type"})
public class ItemDto {
    @JsonProperty("item_id")
    private final Long itemId;
    private final String title;
    private final String description;

    @JsonProperty("n_price")
    private final int normalPrice;

    @JsonProperty("s_price")
    private final int salePrice;

    @JsonProperty("delivery_type")
    private List<String> deliveryType = Arrays.asList(new String[] {"전국택배, 새벽배송"});

    @JsonProperty("badge")
    private List<String> badges;

    private String image;

    public ItemDto(Item item, Image image) {
        this.itemId = item.getItemId();
        this.title = item.getTitle();
        this.description = item.getDescription();
        this.normalPrice = item.getNormalPrice().intValue();
        this.salePrice = item.getSalePrice().intValue();
        this.badges = parseBadge(item.getBadge());
        this.image = image.getUrl();
    }

    public Long getItemId() {
        return itemId;
    }

    public String getTitle() {
        return title;
    }

    public String getDescription() {
        return description;
    }

    public int getNormalPrice() {
        return normalPrice;
    }

    public int getSalePrice() {
        return salePrice;
    }

    public List<String> getDeliveryType() {
        return deliveryType;
    }

    public List<String> getBadges() {
        return badges;
    }

    public String getImage() {
        return image;
    }

    private List<String> parseBadge(String badge) {
        if(badge.equals("")) {
            return new ArrayList<>();
        }

        return Arrays.asList(badge.split(", "));
    }
}
