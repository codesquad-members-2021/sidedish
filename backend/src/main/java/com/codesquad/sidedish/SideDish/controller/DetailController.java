package com.codesquad.sidedish.SideDish.controller;

import com.codesquad.sidedish.SideDish.dto.DishDetailDto;
import com.codesquad.sidedish.SideDish.service.DishService;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/detail")
public class DetailController {
    private final DishService dishService;

    public DetailController(DishService dishService) {
        this.dishService = dishService;
    }

    @GetMapping("/{hash}")
    public ResponseEntity<DishDetailDto> getDetail(@PathVariable("hash") String hash) {
        DishDetailDto dishDetailDto = dishService.getDetail(hash);
        return ResponseEntity.ok().body(dishDetailDto);
    }
}
