package com.codesquad.sidedish.category.domain.dto;

import java.util.ArrayList;
import java.util.List;

public class PreviewListDtoWrapper {

    private final List<SidedishItemPreviewDTO> items;

    public PreviewListDtoWrapper(List<SidedishItemPreviewDTO> previewDTOs) {
        this.items = new ArrayList<>();
        addDTO(previewDTOs);
    }

    private void addDTO(List<SidedishItemPreviewDTO> previewDTOs) {
        items.addAll(previewDTOs);
    }

    public List<SidedishItemPreviewDTO> getItems() {
        return items;
    }
}
