package com.example.controller;

import com.example.dto.Category.ResponseDTO;
import com.example.service.CategoryService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/best")
public class ApiCategoryController {
    private final Logger logger = LoggerFactory.getLogger(this.getClass());
    private final CategoryService categoryService;

    @Autowired
    public ApiCategoryController(CategoryService categoryService) {
        this.categoryService = categoryService;
    }

    @GetMapping
    public ApiResult<List<ResponseDTO>> getBestFoodList(){
        logger.debug("모든 베스트 푸드 리스트를 출력합니다.");
        return ApiResult.succeed(HttpStatus.OK,categoryService.findAll());
    }

    @GetMapping("{categoryId}")
    public ResponseDTO getBestFoodOfCategory(@PathVariable Long categoryId){
        logger.debug("{} 카테고리의 베스트 푸드 리스트를 출력합니다.",categoryId);
        return categoryService.findById(categoryId);
    }

}
