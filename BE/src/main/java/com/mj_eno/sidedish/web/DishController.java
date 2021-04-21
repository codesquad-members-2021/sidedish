package com.mj_eno.sidedish.web;

import com.mj_eno.sidedish.service.DishService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class DishController {

    public final DishService dishService;
    private final Logger logger = LoggerFactory.getLogger(DishController.class);

    public DishController(DishService dishService) {
        this.dishService = dishService;
    }
}
