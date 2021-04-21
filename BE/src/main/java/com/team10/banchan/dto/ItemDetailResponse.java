package com.team10.banchan.dto;

import com.fasterxml.jackson.annotation.JsonProperty;

public class ItemDetailResponse {
    private Long id;
    private ItemDetail itemDetail;

    public ItemDetailResponse(Long id, ItemDetail itemDetail) {
        this.id = id;
        this.itemDetail = itemDetail;
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
