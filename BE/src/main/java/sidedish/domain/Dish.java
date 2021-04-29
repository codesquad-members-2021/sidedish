package sidedish.domain;

import org.springframework.data.annotation.Id;
import org.springframework.data.relational.core.mapping.Table;

import java.util.List;
import java.util.Objects;

@Table("DISH")
public class Dish {

    @Id
    private Long id;

    private String name;
    private String topImage;
    private String description;
    private List<Price> prices;
    private List<Badge> badges;
    private Long stock;
    private Integer point;
    private String deliveryInfo;
    private List<ThumbImage> thumbImages;
    private List<DetailImage> detailImages;

    public Dish(String name, String topImage, String description, List<Price> prices, List<Badge> badges, Long stock, Integer point,
                String deliveryInfo, List<ThumbImage> thumbImages, List<DetailImage> detailImages) {
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

    public List<Price> getPrices() {
        return prices;
    }

    public List<Badge> getBadges() {
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

    public List<ThumbImage> getThumbImages() {
        return thumbImages;
    }

    public List<DetailImage> getDetailImages() {
        return detailImages;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Dish dish = (Dish) o;
        return id.equals(dish.id) && name.equals(dish.name);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, name);
    }

    @Override
    public String toString() {
        return "Dish{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", topImage='" + topImage + '\'' +
                ", description='" + description + '\'' +
                ", prices='" + prices + '\'' +
                ", badges='" + badges + '\'' +
                ", stock=" + stock +
                ", point=" + point +
                ", deliveryInfo='" + deliveryInfo + '\'' +
                ", thumbImages='" + thumbImages + '\'' +
                ", detailImages='" + detailImages + '\'' +
                '}';
    }
}
