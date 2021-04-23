package com.codesquad.sidedish.category.domain.dto;

public class DetailItemDtoWrapper {

    private SidedishDetailItemDTO item;

    public DetailItemDtoWrapper(SidedishDetailItemDTO item) {
        this.item = item;
    }

    public SidedishDetailItemDTO getItem() {
        return item;
    }
}
