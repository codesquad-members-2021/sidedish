package com.mj_eno.sidedish.web;

import com.mj_eno.sidedish.service.DishService;
import com.mj_eno.sidedish.web.dto.MainDishResponseDTO;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
public class DishController {

    public final DishService dishService;
    private final Logger logger = LoggerFactory.getLogger(DishController.class);

    public DishController(DishService dishService) {
        this.dishService = dishService;
    }

    @GetMapping("/main")
    public List<MainDishResponseDTO> viewBestDishes() {
        logger.info("모든 메인 반찬 요청");
        return dishService.findAllMainDish();
    }
}
