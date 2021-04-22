package com.codesquad.sidedish.controller;

import com.codesquad.sidedish.entity.Dish;
import com.codesquad.sidedish.repository.DishRepository;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;

@Controller
public class DishController {
    private DishRepository dishRepository;

    public DishController(DishRepository dishRepository) {
        this.dishRepository = dishRepository;
    }

    @PostMapping("/dish")
    public void add(@RequestBody Dish dish) {
        dishRepository.save(dish);
    }
}
