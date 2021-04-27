package com.team15.sidedish.controller;

import com.team15.sidedish.dto.BestDTO;
import com.team15.sidedish.dto.BestDishesDTO;
import com.team15.sidedish.service.BestService;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/best")
public class BestController {

    private BestService bestService;

    public BestController(BestService bestService) {
        this.bestService = bestService;
    }

    @GetMapping
    public BestDishesDTO showAllBestDishes() {
        return BestDishesDTO.of(bestService.showAllBestDishes());
    }

    @GetMapping("/{categoryId}")
    public BestDTO showSingleBestDish(@PathVariable Long categoryId) {
        return bestService.showSingleBestDish(categoryId);
    }
}
