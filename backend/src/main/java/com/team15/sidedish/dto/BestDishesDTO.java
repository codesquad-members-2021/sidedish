package com.team15.sidedish.dto;

import java.util.List;

public class BestDishesDTO {
    private List<BestDTO> bestDishesDTO;

    public BestDishesDTO(List<BestDTO> bestDishesDTO) {
        this.bestDishesDTO = bestDishesDTO;
    }

    public List<BestDTO> getBestDishesDTO() {
        return bestDishesDTO;
    }

    @Override
    public String toString() {
        return "BestAllDTO{" +
                "bestDishesDTO=" + bestDishesDTO +
                '}';
    }
}
