package com.codesquad.sidedish.controller;

import com.codesquad.sidedish.entity.DishDetail;
import com.codesquad.sidedish.repository.DishDetailRepository;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;

@Controller
public class DishDetailController {
    private DishDetailRepository dishDetailRepository;

    public DishDetailController(DishDetailRepository dishDetailRepository) {
        this.dishDetailRepository = dishDetailRepository;
    }

    @PostMapping("/dish-detail")
    public void add(@RequestBody DishDetail dishDetail) {
        dishDetailRepository.save(dishDetail);
    }
}
