package com.codesquad.team14.dto;

import com.codesquad.team14.domain.Badge;
import com.codesquad.team14.domain.Item;

import java.util.List;

public class ItemDto {
    public static class Response {
        private final Long id;
        private final String topImage;
        private final String deliveryTypes;
        private final String title;
        private final String description;
        private final int nPrice;
        private final int sPrice;
        private final List<Badge> badges;

        private Response(Long id, String image, String deliveryTypes, String title,
                         String description, int nPrice, int sPrice, List<Badge> badges) {
            this.id = id;
            this.topImage = image;
            this.deliveryTypes = deliveryTypes;
            this.title = title;
            this.description = description;
            this.nPrice = nPrice;
            this.sPrice = sPrice;
            this.badges = badges;
        }

        public static Response from(Item item) {
            return new Response(
                    item.getId(),
                    item.getImages().split(", ")[0],
                    item.getDeliveryTypes().toString(),
                    item.getTitle(),
                    item.getDescription(),
                    item.getNPrice(),
                    item.getSPrice(),
                    item.getBadges()
            );
        }

        public Long getId() {
            return id;
        }

        public String getTopImage() {
            return topImage;
        }

        public String getDeliveryTypes() {
            return deliveryTypes;
        }

        public String getTitle() {
            return title;
        }

        public String getDescription() {
            return description;
        }

        public int getnPrice() {
            return nPrice;
        }

        public int getsPrice() {
            return sPrice;
        }

        public List<Badge> getBadges() {
            return badges;
        }
    }
}
