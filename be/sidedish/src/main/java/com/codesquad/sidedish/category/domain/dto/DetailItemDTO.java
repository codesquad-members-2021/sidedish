package com.codesquad.sidedish.category.domain.dto;

import com.codesquad.sidedish.category.domain.SidedishItemDetailDTO;

public class DetailItemDTO {

    private SidedishItemDetailDTO item;

    public DetailItemDTO(SidedishItemDetailDTO item) {
        this.item = item;
    }

    public SidedishItemDetailDTO getItem() {
        return item;
    }
}
