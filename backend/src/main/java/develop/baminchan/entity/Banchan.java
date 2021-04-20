package develop.baminchan.entity;

import org.springframework.data.annotation.Id;

import java.util.Set;

public class Banchan {
    @Id
    private Long id;

    private String detail_hash;
    private String image;
    private String alt;
    private String delivery_type;
    private String title;
    private String description;
    private String n_price;
    private String s_price;
    private String badge;

    public Banchan(Long id, String detail_hash, String image, String alt, String delivery_type, String title, String description, String n_price, String s_price, String badge) {
        this.id = id;
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

    public Long getId() {
        return id;
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

    public String getDelivery_type() {
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

    public String getBadge() {
        return badge;
    }
}
