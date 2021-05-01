package com.mj_eno.sidedish.web.dto;

import com.mj_eno.sidedish.domain.bestMenuCategory.BestMenuCategory;

import java.util.List;

public class BestDishResponseDTO {

    private final Long bestCategoryId;
    private final String name;
    private final List<DishResponseDTO> items;

    public BestDishResponseDTO(BestMenuCategory bestMenuCategory, List<DishResponseDTO> dishResponseDTOList) {
        this.bestCategoryId = bestMenuCategory.getId();
        this.name = bestMenuCategory.getName();
        this.items = dishResponseDTOList;
    }

    public Long getBestCategoryId() {
        return bestCategoryId;
    }

    public String getName() {
        return name;
    }

    public List<DishResponseDTO> getItems() {
        return items;
    }
}
