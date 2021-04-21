package com.codesquad.sidedish.SideDish.controller;

import com.codesquad.sidedish.SideDish.dto.DishDetailDto;
import com.codesquad.sidedish.SideDish.dto.DishDto;
import com.codesquad.sidedish.SideDish.service.DishService;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/main")
public class MainController {
    private final DishService dishService;

    public MainController(DishService dishService) {
        this.dishService = dishService;
    }

    @GetMapping
    public ResponseEntity<List<DishDto>> getMainList() {
        List<DishDto> dishes = dishService.getList(1);
        return ResponseEntity.ok().body(dishes);
    }

    @GetMapping("/{hash}")
    public ResponseEntity<DishDetailDto> getMain(@PathVariable("hash") String hash) {
        DishDetailDto dishDetailDto = dishService.getDetail(hash);
        return ResponseEntity.ok().body(dishDetailDto);
    }
}
