package com.codesquad.team14.dto;

import com.codesquad.team14.domain.Item;

import java.util.Arrays;
import java.util.List;

public class DetailedItemDto {

    private static class Response {
        private final Long id;
        private final String topImage;
        private final List<String> thumbImages;
        private final String description;
        private final String deliveryInfo;
        private final String deliveryFee;
        private final int nPrice;
        private final int sPrice;
        private final int point;

        public Response(Long id, String topImage, List<String> thumbImages, String description, String deliveryInfo,
                        String deliveryFee, int nPrice, int sPrice, int point) {
            this.id = id;
            this.topImage = topImage;
            this.thumbImages = thumbImages;
            this.description = description;
            this.deliveryInfo = deliveryInfo;
            this.deliveryFee = deliveryFee;
            this.nPrice = nPrice;
            this.sPrice = sPrice;
            this.point = point;
        }

        public static Response from(Item item) {
            return new Response(
                    item.getId(),
                    item.getImages().split(", ")[0],
                    Arrays.asList(item.getImages().split(", ")),
                    item.getDescription(),
                    item.getDeliveryInfo(),
                    item.getDeliveryFeePolicy(),
                    item.getNPrice(),
                    item.getSPrice(),
                    item.getSPrice() / 100
            );
        }
    }
}
