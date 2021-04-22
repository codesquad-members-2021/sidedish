package com.codesquad.sidedish.category.domain.dto;

import java.util.ArrayList;
import java.util.List;

public class SidedishItemPreviewListDTO {

    private List<SidedishItemPreviewDTO> items;

    public SidedishItemPreviewListDTO(List<SidedishItemPreviewDTO> previewDTOs) {
        this.items = new ArrayList<>();
        addDTO(previewDTOs);
    }

    private void addDTO(List<SidedishItemPreviewDTO> previewDTOs){
        for (SidedishItemPreviewDTO previewDTO : previewDTOs) {
            items.add(previewDTO);
        }
    }

    public List<SidedishItemPreviewDTO> getItems() {
        return items;
    }
}
