package sidedish.domain;

import org.springframework.data.annotation.Id;

import java.util.Collections;
import java.util.List;

public class Dish {

    @Id
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

    public Dish(String name, String topImage, String description, List<Integer> prices, List<String> badges,
                Long stock, String deliveryInfo, List<String> thumbImages, List<String> detailImages) {
        this.name = name;
        this.topImage = topImage;
        this.description = description;
        this.prices = prices;
        this.badges = badges;
        this.stock = stock;
        this.point = createPoint(prices);
        this.deliveryInfo = deliveryInfo;
        this.thumbImages = thumbImages;
        this.detailImages = detailImages;
    }

    private Integer createPoint(List<Integer> prices) {
        return Collections.min(prices) / 100;
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
