package com.team15.sidedish.dto;

import com.fasterxml.jackson.annotation.JsonProperty;

import java.util.List;

public class BestDishesDTO {
    @JsonProperty("best_dishes")
    private List<BestDTO> bestDishes;

    private BestDishesDTO(List<BestDTO> bestDishes) {
        this.bestDishes = bestDishes;
    }

    public static BestDishesDTO of(List<BestDTO> bestDishes) {
        return new BestDishesDTO(bestDishes);
    }

    public List<BestDTO> getBestDishes() {
        return bestDishes;
    }

    @Override
    public String toString() {
        return "BestDishesDTO{" +
                "bestDishes=" + bestDishes +
                '}';
    }
}


