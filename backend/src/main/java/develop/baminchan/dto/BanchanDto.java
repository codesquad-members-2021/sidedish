package develop.baminchan.dto;

import com.fasterxml.jackson.annotation.JsonInclude;
import develop.baminchan.entity.Banchan;

import java.util.Set;

import static develop.baminchan.dto.util.StringConvertor.convertToSet;

@JsonInclude(JsonInclude.Include.NON_NULL)
public class BanchanDto {
    private String detail_hash;
    private String image;
    private String alt;
    private Set<String> delivery_type;
    private String title;
    private String description;
    private String n_price;
    private String s_price;
    private Set<String> badge;

    protected BanchanDto() {

    }

    private BanchanDto(Banchan banchan) {
        this.detail_hash = banchan.getDetail_hash();
        this.image = banchan.getImage();
        this.alt = banchan.getAlt();
        this.delivery_type = convertToSet(banchan.getDelivery_type());
        this.title = banchan.getTitle();
        this.description = banchan.getDescription();
        this.n_price = banchan.getN_price();
        this.s_price = banchan.getS_price();
        this.badge = convertToSet(banchan.getBadge());
    }

    // Entity -> DTO
    public static BanchanDto of(Banchan banchan) {
        return new BanchanDto(banchan);
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

    public Set<String> getDelivery_type() {
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

    public Set<String> getBadge() {
        return badge;
    }
}
