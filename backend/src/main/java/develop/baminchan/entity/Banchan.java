package develop.baminchan.entity;

import org.springframework.data.annotation.Id;

import java.util.HashMap;

public class Banchan {
    @Id
    private String detail_hash;
    private String image;
    private String alt;
    private DeliveryType delivery_type;
    private String title;
    private String description;
    private String n_price;
    private String s_price;
    private Badge badge;

    public Banchan(String detail_hash, String image, String alt, DeliveryType delivery_type, String title, String description, String n_price, String s_price, Badge badge) {
        this.detail_hash = detail_hash;
        this.image = image;
        this.alt = alt;
        this.delivery_type = delivery_type;
        this.title = title;
        this.description = description;
        this.n_price = n_price;
        this.s_price = s_price;
        this.badge = badge;
    }

    public String getDetail_hash() {
        return detail_hash;
    }

    public String getImage() {
        return image;
    }

    public String getAlt() {
        return alt;
    }

    public DeliveryType getDelivery_type() {
        return delivery_type;
    }

    public String getTitle() {
        return title;
    }

    public String getDescription() {
        return description;
    }

    public String getN_price() {
        return n_price;
    }

    public String getS_price() {
        return s_price;
    }

    public Badge getBadge() {
        return badge;
    }

    public enum DeliveryType {
        새벽배송,
        전국택배
    }

    public enum Badge {
        이벤트특가,
        론칭특가,
        베스트
    }
}
