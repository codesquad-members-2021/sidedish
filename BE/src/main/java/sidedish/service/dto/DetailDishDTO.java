package sidedish.service.dto;

import sidedish.domain.Dish;
import sidedish.service.ConvertUtils;

import java.util.List;

public class DetailDishDTO {

    private Long id;
    private String name;
    private String top_image;
    private String description;
    private List<Integer> prices;
    private List<String> badges;
    private Long stock;
    private Integer point;
    private String delivery_info;
    private List<String> thumb_images;
    private List<String> detail_images;

    public DetailDishDTO(Dish dish) {
        this.id = dish.getId();
        this.name = dish.getName();
        this.top_image = dish.getTopImage();
        this.description = dish.getDescription();
        this.prices = ConvertUtils.convertToIntegerList(dish.getPrices());
        this.badges = ConvertUtils.convertToStringList(dish.getBadges());
        this.stock = dish.getStock();
        this.point = dish.getPoint();
        this.delivery_info = dish.getDeliveryInfo();
        this.thumb_images = ConvertUtils.convertToStringList(dish.getThumbImages());
        this.detail_images = ConvertUtils.convertToStringList(dish.getDetailImages());
    }

    public Long getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public String getTop_image() {
        return top_image;
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

    public String getDelivery_info() {
        return delivery_info;
    }

    public List<String> getThumb_images() {
        return thumb_images;
    }

    public List<String> getDetail_images() {
        return detail_images;
    }
}
