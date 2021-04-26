package develop.baminchan.dto.banchan;

import com.fasterxml.jackson.annotation.JsonInclude;

import java.util.Set;

@JsonInclude(JsonInclude.Include.NON_NULL)
public class BanchanDetailDataDto {

    private String top_image;
    private Set<String> thumb_images;
    private String product_description;
    private String point;
    private String delivery_info;
    private String delivery_fee;
    private Set<String> prices;

    public BanchanDetailDataDto(DataDtoBuilder dataDtoBuilder) {
        this.top_image = dataDtoBuilder.top_image;
        this.thumb_images = dataDtoBuilder.thumb_images;
        this.product_description = dataDtoBuilder.product_description;
        this.point = dataDtoBuilder.point;
        this.delivery_info = dataDtoBuilder.delivery_info;
        this.delivery_fee = dataDtoBuilder.delivery_fee;
        this.prices = dataDtoBuilder.prices;
    }

    public String getTop_image() {
        return top_image;
    }

    public Set<String> getThumb_images() {
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

    public Set<String> getPrices() {
        return prices;
    }

    public static class DataDtoBuilder {

        private String top_image;
        private Set<String> thumb_images;
        private String product_description;
        private String point;
        private String delivery_info;
        private String delivery_fee;
        private Set<String> prices;

        DataDtoBuilder() {

        }

        public DataDtoBuilder setTop_image(String top_image) {
            this.top_image = top_image;
            return this;
        }

        public DataDtoBuilder setThumb_images(Set<String> thumb_images) {
            this.thumb_images = thumb_images;
            return this;
        }

        public DataDtoBuilder setProduct_description(String product_description) {
            this.product_description = product_description;
            return this;
        }

        public DataDtoBuilder setPoint(String point) {
            this.point = point;
            return this;
        }

        public DataDtoBuilder setDelivery_info(String delivery_info) {
            this.delivery_info = delivery_info;
            return this;
        }

        public DataDtoBuilder setDelivery_fee(String delivery_fee) {
            this.delivery_fee = delivery_fee;
            return this;
        }

        public DataDtoBuilder setPrices(Set<String> prices) {
            this.prices = prices;
            return this;
        }

        public BanchanDetailDataDto build() {
            return new BanchanDetailDataDto(this);
        }
    }
}
