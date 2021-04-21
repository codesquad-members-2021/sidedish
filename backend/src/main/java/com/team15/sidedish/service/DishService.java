package com.team15.sidedish.service;

import com.team15.sidedish.domain.Dish;
import com.team15.sidedish.domain.DishRepository;
import org.springframework.stereotype.Service;

import java.security.PublicKey;
import java.util.List;

@Service
public class DishService {
    private final DishRepository dishRepository;

    public DishService(DishRepository dishRepository) {
        this.dishRepository = dishRepository;
    }

    public List<Dish> showDishes() {
        List<Dish> dishes = (List<Dish>) dishRepository.findAll();
        return dishes;
    }

    public Dish showSingleDish(String hash) {
        Dish dish = dishRepository.findById(hash).get();
        return dish;
    }

//    public List<Dish> showDishesBySectionName(String sectionName) {
//        return dishRepository.findAllBySectionName(sectionName);
//    }

}
