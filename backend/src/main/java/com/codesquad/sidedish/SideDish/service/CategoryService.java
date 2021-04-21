package com.codesquad.sidedish.SideDish.service;

import com.codesquad.sidedish.SideDish.dto.CategoryDto;
import com.codesquad.sidedish.SideDish.dto.DishDto;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

@Service
public class CategoryService {
    public List<CategoryDto> getList() {
        List<DishDto> mainDishes = new ArrayList<>();
        List<DishDto> soupDishes = new ArrayList<>();
        List<DishDto> sideDishes = new ArrayList<>();
        return Arrays.asList(
                new CategoryDto(1, "main", mainDishes),
                new CategoryDto(2, "soup", soupDishes),
                new CategoryDto(3, "side", sideDishes)
        );
    }
}
