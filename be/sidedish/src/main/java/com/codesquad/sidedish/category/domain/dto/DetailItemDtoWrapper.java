package com.codesquad.sidedish.category.domain.dto;

import com.codesquad.sidedish.category.domain.SidedishDetailItemDTO;

public class DetailItemDtoWrapper {

    private SidedishDetailItemDTO item;

    public DetailItemDtoWrapper(SidedishDetailItemDTO item) {
        this.item = item;
    }

    public SidedishDetailItemDTO getItem() {
        return item;
    }
}
