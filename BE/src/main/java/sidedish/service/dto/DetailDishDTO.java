package sidedish.service.dto;

import sidedish.domain.Dish;
import sidedish.service.ConvertUtils;

import java.util.List;

public class DetailDishDTO {

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
}
