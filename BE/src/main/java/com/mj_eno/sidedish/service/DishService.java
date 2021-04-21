package com.mj_eno.sidedish.service;

import com.mj_eno.sidedish.domain.dish.DishRepository;
import org.springframework.stereotype.Service;

@Service
public class DishService {

    public final DishRepository dishRepository;

    public DishService(DishRepository dishRepository) {
        this.dishRepository = dishRepository;
    }
}
