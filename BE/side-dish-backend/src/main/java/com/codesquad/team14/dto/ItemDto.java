package com.codesquad.team14.dto;

import com.codesquad.team14.domain.Badge;
import com.codesquad.team14.domain.Category;
import com.codesquad.team14.domain.DeliveryType;
import com.codesquad.team14.domain.Item;

import java.util.List;

public class ItemDto {
    public static class Response {
        private Long id;
        private String image;
        private String deliveryTypes;
        private String title;
        private String description;
        private int nPrice;
        private int sPrice;
        private List<Badge> badges;

        private Response(Long id, String image, String deliveryTypes, String title,
                        String description, int nPrice, int sPrice, List<Badge> badges) {
            this.id = id;
            this.image = image;
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

        public String getImage() {
            return image;
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
