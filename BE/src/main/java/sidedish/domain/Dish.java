package sidedish.domain;

import org.springframework.data.annotation.Id;
import sidedish.service.ConvertUtils;
import sidedish.service.dto.DetailDishDTO;

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

    public Dish() { }

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

    public Dish(DetailDishDTO dto) {
        this.name = dto.getName();
        this.topImage = dto.getTop_image();
        this.description = dto.getDescription();
        this.prices = ConvertUtils.convertToString(dto.getPrices());
        this.badges = ConvertUtils.convertToString(dto.getBadges());
        this.stock = dto.getStock();
        this.point = dto.getPoint();
        this.deliveryInfo = dto.getDelivery_info();
        this.thumbImages = ConvertUtils.convertToString(dto.getThumb_images());
        this.detailImages = ConvertUtils.convertToString(dto.getDetail_images());
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
