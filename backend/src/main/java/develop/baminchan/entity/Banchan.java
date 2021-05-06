package develop.baminchan.entity;

import develop.baminchan.entity.banchan.BanchanDetail;
import org.springframework.data.annotation.Id;
import org.springframework.data.relational.core.mapping.Embedded;

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

    private String tag;
    private String category_id;

    @Embedded.Nullable
    private BanchanDetail banchanDetail;

    public Banchan(Long id, String detail_hash, String image, String alt, String delivery_type, String title, String description, String n_price, String s_price, String badge, String tag, String category_id, BanchanDetail banchanDetail) {
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
        this.tag = tag;
        this.category_id = category_id;
        this.banchanDetail = banchanDetail;
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

    public String getTag() {
        return tag;
    }

    public String getCategory_id() {
        return category_id;
    }

    public BanchanDetail getBanchanDetail() {
        return banchanDetail;
    }
}
