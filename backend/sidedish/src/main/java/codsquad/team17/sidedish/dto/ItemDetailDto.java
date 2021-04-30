package codsquad.team17.sidedish.dto;

import codsquad.team17.sidedish.domain.Item;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonPropertyOrder;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

@JsonPropertyOrder({"item_id", "title", "description", "n_price", "s_price", "badge", "main_image", "thumb_images",
        "point", "delivery_info", "delivery_fee", "delivery_description", "stock", "recommended"})
public class ItemDetailDto {

    @JsonProperty("item_id")
    private Long itemId;

    private String title;

    private String description;

    @JsonProperty("n_price")
    private int normalPrice;

    @JsonProperty("s_price")
    private int salePrice;

    @JsonProperty("badge")
    private List<String> badges;

    @JsonProperty("main_image")
    private String mainImage;

    @JsonProperty("thumb_images")
    private List<String> thumbImages;

    private int point;

    @JsonProperty("delivery_fee")
    private int deliveryFee = 2500;

    @JsonProperty("delivery_description")
    private String deliveryDescription = "(40,000원 이상 구매 시 무료)";

    @JsonProperty("delivery_info")
    private String deliveryInfo = "서울 경기 새벽배송 / 전국택배 (제주 및 도서산간 불가) [월 · 화 · 수 · 목 · 금 · 토] 수령 가능한 상품입니다.";

    private int stock;

    @JsonProperty("recommended")
    private List<RecommendedItemDto> recommendedItems;

    public ItemDetailDto(Item item, List<String> thumbImages, List<RecommendedItemDto> recommendedItems) {
        this.itemId = item.getItemId();
        this.title = item.getTitle();
        this.description = item.getDescription();
        this.badges = parseByComma(item.getBadge());

        this.normalPrice = item.getNormalPrice().intValue();
        this.salePrice = item.getSalePrice().intValue();
        this.point = calculatePoint(this.normalPrice);
        this.stock = item.getStock();

        this.mainImage = thumbImages.get(0);
        this.thumbImages = thumbImages;

        this.recommendedItems = recommendedItems;
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

    public List<String> getBadges() {
        return badges;
    }

    public String getMainImage() {
        return mainImage;
    }

    public List<String> getThumbImages() {
        return thumbImages;
    }

    public int getPoint() {
        return point;
    }

    public int getDeliveryFee() {
        return deliveryFee;
    }

    public String getDeliveryDescription() {
        return deliveryDescription;
    }

    public String getDeliveryInfo() {
        return deliveryInfo;
    }

    public int getStock() {
        return stock;
    }

    public List<RecommendedItemDto> getRecommendedItems() {
        return recommendedItems;
    }

    private List<String> parseByComma(String badge) {
        return badge.equals("") ? new ArrayList<>() : Arrays.asList(badge.split(", "));
    }

    private int calculatePoint(int normalPrice) {
        return normalPrice / 100;
    }
}
