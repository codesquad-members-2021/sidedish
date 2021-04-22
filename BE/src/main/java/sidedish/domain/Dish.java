package sidedish.domain;

import org.springframework.data.annotation.Id;

public class Dish {

    @Id
    private Long id;

    private String name;
    private String topImage;
    private String description;
    private String prices;
    private String badges;
    private Long stock;
    private Integer point;
    private String deliveryInfo;
    private String thumbImages;
    private String detailImages;

    public Dish(String name, String topImage, String description, String prices,
                String badges, Long stock, String deliveryInfo, String thumbImages, String detailImages) {
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

    private Integer createPoint(String prices) {
        String[] priceArr = prices.split(",");
        return Integer.parseInt(priceArr[0].trim()) / 100;
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

    public String getPrices() {
        return prices;
    }

    public String getBadges() {
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

    public String getThumbImages() {
        return thumbImages;
    }

    public String getDetailImages() {
        return detailImages;
    }
}
