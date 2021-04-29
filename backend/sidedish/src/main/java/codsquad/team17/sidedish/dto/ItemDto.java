package codsquad.team17.sidedish.dto;

import codsquad.team17.sidedish.domain.Image;
import codsquad.team17.sidedish.domain.Item;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonPropertyOrder;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

@JsonPropertyOrder({"item_id", "title", "description", "n_price", "s_price",
        "badge", "image", "delivery_type", "detail_url"})
public class ItemDto {
    private static final String URL = "http://ec2-15-164-123-251.ap-northeast-2.compute.amazonaws.com:8080";

    @JsonProperty("item_id")
    private final Long itemId;
    private final String title;
    private final String description;

    @JsonProperty("n_price")
    private final int normalPrice;

    @JsonProperty("s_price")
    private final int salePrice;

    @JsonProperty("delivery_type")
    private List<String> deliveryType = Arrays.asList(new String[] {"새벽배송", "전국택배"});

    @JsonProperty("badge")
    private List<String> badges;

    private String image;

    @JsonProperty("detail_url")
    private String detailUrl;

    public ItemDto(Item item, Image image) {
        this.itemId = item.getItemId();
        this.title = item.getTitle();
        this.description = item.getDescription();
        this.normalPrice = item.getNormalPrice().intValue();
        this.salePrice = item.getSalePrice().intValue();
        this.badges = parseByComma(item.getBadge());
        this.image = image.getUrl();
        this.detailUrl = URL + "/dish" + "/detail" + "/" + itemId;
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

    private List<String> parseByComma(String badge) {
        return badge.equals("") ? new ArrayList<>() : Arrays.asList(badge.split(", "));
    }

}
