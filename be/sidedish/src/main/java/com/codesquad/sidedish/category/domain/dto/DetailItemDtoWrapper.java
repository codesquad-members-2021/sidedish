package com.codesquad.sidedish.category.domain.dto;

public class DetailItemDtoWrapper {

    private final SidedishDetailItemDTO item;

    public DetailItemDtoWrapper(SidedishDetailItemDTO item) {
        this.item = item;
    }

    public SidedishDetailItemDTO getItem() {
        return item;
    }
}
