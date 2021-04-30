package com.codesquad.sidedish.controller;

import com.codesquad.sidedish.domain.Dish;
import com.codesquad.sidedish.dto.DishDetailResponseDto;
import com.codesquad.sidedish.dto.ResponseDto;
import com.codesquad.sidedish.service.DishService;
import com.codesquad.sidedish.util.Status;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/dishes")
public class DishController {

    private DishService dishService;

    public DishController(DishService dishService) {
        this.dishService = dishService;
    }

    @GetMapping("/{dishId}")
    public ResponseEntity<DishDetailResponseDto> readDish(@PathVariable String dishId) {
        Dish dish = dishService.findDishByDishId(dishId);
        return ResponseEntity.ok().body(DishDetailResponseDto.of(dish));
    }

    @PutMapping("/{dishId}")
    public ResponseEntity<ResponseDto> orderDish(@PathVariable String dishId, @RequestParam("count") int orderSize) {
        if (dishService.orderDish(dishId, orderSize)) {
            return ResponseEntity.ok().body(ResponseDto.of(Status.OK));
        }
        return ResponseEntity.badRequest().body(ResponseDto.of(Status.OUT_OF_STOCK));
    }
}
