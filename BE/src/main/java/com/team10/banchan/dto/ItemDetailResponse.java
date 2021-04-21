package com.team10.banchan.dto;

import com.fasterxml.jackson.annotation.JsonProperty;

public class ItemDetailResponse {

    private final Long id;
    private final ItemDetail itemDetail;

    private ItemDetailResponse(Long id, ItemDetail itemDetail) {
        this.id = id;
        this.itemDetail = itemDetail;
    }

    public static ItemDetailResponse of(Long id, ItemDetail itemDetail) {
        return new ItemDetailResponse(id, itemDetail);
    }

    @JsonProperty("hash")
    public Long getId() {
        return id;
    }

    @JsonProperty("data")
    public ItemDetail getItemDetail() {
        return itemDetail;
    }
}
