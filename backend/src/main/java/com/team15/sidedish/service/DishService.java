package com.team15.sidedish.service;

import com.team15.sidedish.domain.DishRepository;
import com.team15.sidedish.dto.ItemDTO;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class DishService {
    private final DishRepository dishRepository;

    public DishService(DishRepository dishRepository) {
        this.dishRepository = dishRepository;
    }

    public List<ItemDTO> showDishes() {
        return dishRepository.findAll();
    }

    public ItemDTO showSingleDish(String hash) {
        return dishRepository.findById(hash).orElseThrow(IllegalArgumentException::new);
    }

    public List<ItemDTO> showDishsBySection(String section) {
        return dishRepository.findAllBySection(section);
    }
}
