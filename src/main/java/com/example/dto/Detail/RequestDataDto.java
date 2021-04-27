package com.example.dto.Detail;

import java.util.Arrays;

public class RequestDataDto {
    public String top_image;
    public String[] thumb_images;
    public String product_description;
    public String point;
    public String delivery_info;
    public String delivery_fee;
    public String[] prices;
    public String[] detail_section;

    public String getTop_image() {
        return top_image;
    }

    public String[] getThumb_images() {
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

    public String[] getPrices() {
        return prices;
    }

    public String[] getDetail_section() {
        return detail_section;
    }

    @Override
    public String toString() {
        return "RequestDataDto{" +
                "top_image='" + top_image + '\'' +
                ", thumb_images=" + Arrays.toString(thumb_images) +
                ", product_description='" + product_description + '\'' +
                ", point='" + point + '\'' +
                ", delivery_info='" + delivery_info + '\'' +
                ", delivery_fee='" + delivery_fee + '\'' +
                ", prices=" + Arrays.toString(prices) +
                ", detail_section=" + Arrays.toString(detail_section) +
                '}';
    }
}
