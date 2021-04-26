package develop.baminchan.entity.banchan;

import com.fasterxml.jackson.annotation.JsonInclude;

@JsonInclude(JsonInclude.Include.NON_NULL)
public class BanchanDetailData {

    private String top_image;
    private String thumb_images;
    private String product_description;
    private String point;
    private String delivery_info;
    private String delivery_fee;
    private String prices;

    public BanchanDetailData(String top_image, String thumb_images, String product_description, String point, String delivery_info, String delivery_fee, String prices) {
        this.top_image = top_image;
        this.thumb_images = thumb_images;
        this.product_description = product_description;
        this.point = point;
        this.delivery_info = delivery_info;
        this.delivery_fee = delivery_fee;
        this.prices = prices;
    }

    public String getTop_image() {
        return top_image;
    }

    public String getThumb_images() {
        return thumb_images;
    }

    public String getProduct_description() {
        return product_description;
    }

    public String getPoint() {
        return point;
    }

    public String getDelivery_info() {
        return delivery_info;
    }

    public String getDelivery_fee() {
        return delivery_fee;
    }

    public String getPrices() {
        return prices;
    }

    @Override
    public String toString() {
        return "BanchanDetailData{" +
                "top_image='" + top_image + '\'' +
                ", thumb_images='" + thumb_images + '\'' +
                ", product_description='" + product_description + '\'' +
                ", point='" + point + '\'' +
                ", delivery_info='" + delivery_info + '\'' +
                ", delivery_fee='" + delivery_fee + '\'' +
                ", prices='" + prices + '\'' +
                '}';
    }
}
