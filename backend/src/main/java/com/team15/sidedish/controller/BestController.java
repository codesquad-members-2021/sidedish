package com.team15.sidedish.controller;

import com.team15.sidedish.domain.Best;
import com.team15.sidedish.service.BestService;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import java.util.Set;

@RestController
public class BestController {

    private BestService bestService;

    public BestController(BestService bestService) {
        this.bestService = bestService;
    }

    @GetMapping("/best")
    public Set<Best> showAllBestDishes() {
        return bestService.showAllBestDishes();
    }

    @GetMapping("/best/{categoryId}")
    public Best showSingleBestDish(@PathVariable Integer categoryId) {
        return bestService.showSingleBestDish(categoryId);
    }
}
