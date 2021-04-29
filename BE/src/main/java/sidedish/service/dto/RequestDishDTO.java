package sidedish.service.dto;

import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonPropertyOrder;
import sidedish.domain.Dish;
import sidedish.service.ConvertUtils;

import java.util.List;

public class RequestDishDTO {

    private Long id;
    private String name;
    private String topImage;
    private String description;
    private List<Integer> prices;
    private List<String> badges;
    private Long stock;
    private Integer point;
    private String deliveryInfo;
    private List<String> thumbImages;
    private List<String> detailImages;

    @JsonProperty("category")
    private Long categoryId;

    public RequestDishDTO() {
    }

    public RequestDishDTO(Long id, String name, String topImage, String description, List<Integer> prices, List<String> badges,
                          Long stock, Integer point, String deliveryInfo, List<String> thumbImages, List<String> detailImages, Long categoryId) {
        this.id = id;
        this.name = name;
        this.topImage = topImage;
        this.description = description;
        this.prices = prices;
        this.badges = badges;
        this.stock = stock;
        this.point = point;
        this.deliveryInfo = deliveryInfo;
        this.thumbImages = thumbImages;
        this.detailImages = detailImages;
        this.categoryId = categoryId;
    }

    public Dish createDish() {
        return new Dish(name, topImage, description, ConvertUtils.convertToString(prices), ConvertUtils.convertToString(badges),
                stock, deliveryInfo, ConvertUtils.convertToString(thumbImages), ConvertUtils.convertToString(detailImages));
    }

    public Long getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public String getTopImage() {
        return topImage;
    }

    public String getDescription() {
        return description;
    }

    public List<Integer> getPrices() {
        return prices;
    }

    public List<String> getBadges() {
        return badges;
    }

    public Long getStock() {
        return stock;
    }

    public Integer getPoint() {
        return point;
    }

    public String getDeliveryInfo() {
        return deliveryInfo;
    }

    public List<String> getThumbImages() {
        return thumbImages;
    }

    public List<String> getDetailImages() {
        return detailImages;
    }

    public Long getCategoryId() {
        return categoryId;
    }
}
