package sidedish.service.dto;

import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonPropertyOrder;
import sidedish.domain.Dish;
import sidedish.service.ConvertUtils;

import java.util.List;
@JsonPropertyOrder({"id", "name","top_image", "description", "prices", "badges",
        "stock" , "point", "delivery_info", "thumb_images", "detail_images"})
public class DetailDishDTO {

    private Long id;
    private String name;
    @JsonProperty("top_image")
    private String topImage;
    private String description;
    private List<Integer> prices;
    private List<String> badges;
    private Long stock;
    private Integer point;
    @JsonProperty("delivery_info")
    private String deliveryInfo;
    @JsonProperty("thumb_images")
    private List<String> thumbImages;
    @JsonProperty("detail_images")
    private List<String> detailImages;

    public DetailDishDTO() {}

    public DetailDishDTO(Dish dish) {
        this.id = dish.getId();
        this.name = dish.getName();
        this.topImage = dish.getTopImage();
        this.description = dish.getDescription();
        this.prices = ConvertUtils.convertToIntegerList(dish.getPrices());
        this.badges = ConvertUtils.convertToStringList(dish.getBadges());
        this.stock = dish.getStock();
        this.point = dish.getPoint();
        this.deliveryInfo = dish.getDeliveryInfo();
        this.thumbImages = ConvertUtils.convertToStringList(dish.getThumbImages());
        this.detailImages = ConvertUtils.convertToStringList(dish.getDetailImages());
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

    @Override
    public String toString() {
        return "DetailDishDTO{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", top_image='" + topImage + '\'' +
                ", description='" + description + '\'' +
                ", prices=" + prices +
                ", badges=" + badges +
                ", stock=" + stock +
                ", point=" + point +
                ", delivery_info='" + deliveryInfo + '\'' +
                ", thumb_images=" + thumbImages +
                ", detail_images=" + detailImages +
                '}';
    }
}
