package com.team15.sidedish.service;

import com.team15.sidedish.domain.DishRepository;
import com.team15.sidedish.dto.DishDAO;
import com.team15.sidedish.exception.CannotFoundDishException;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class DishService {
    private final DishRepository dishRepository;

    public DishService(DishRepository dishRepository) {
        this.dishRepository = dishRepository;
    }

    public List<DishDAO> showDishes() {
        return dishRepository.findAllDishes();
    }

    public DishDAO showSingleDish(String hash) {
        return dishRepository.findByHash(hash).orElseThrow(CannotFoundDishException::new);
    }

    public List<DishDAO> showDishsBySection(String section) {
        return dishRepository.findAllBySection(section);
    }
}
