package com.codesquad.sidedish.category.domain.dto;

import com.codesquad.sidedish.category.domain.SidedishItemDetailDTO;

import java.util.ArrayList;
import java.util.List;

public class SidedishItemDetailListDTO {

    private SidedishItemDetailDTO item;

    public SidedishItemDetailListDTO(SidedishItemDetailDTO item) {
        this.item = item;
    }

    public SidedishItemDetailDTO getItem() {
        return item;
    }
}
