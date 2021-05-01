package com.team15.sidedish.service;

import com.team15.sidedish.domain.Best;
import com.team15.sidedish.domain.BestRepository;
import com.team15.sidedish.dto.BestDTO;
import com.team15.sidedish.dto.DishDAO;
import com.team15.sidedish.exception.CannotFoundDishException;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

@Service
public class BestService {

    private BestRepository bestRepository;
    private DishService dishService;

    public BestService(BestRepository bestRepository, DishService dishService) {
        this.bestRepository = bestRepository;
        this.dishService = dishService;
    }

    public List<BestDTO> showAllBestDishes() {
        return bestRepository.findAll()
                .stream()
                .map(best -> showSingleBestDish(best.getCategoryId()))
                .collect(Collectors.toList());
    }

    public BestDTO showSingleBestDish(Long categoryId) {
        List<String> bestDish = bestRepository.findByCategoryId(categoryId);
        Best best = bestRepository.findById(categoryId).orElseThrow(() -> new CannotFoundDishException("해당하는 카테고리를 찾을 수 없습니다."));

        List<DishDAO> items = bestDish
                .stream()
                .map(hash -> dishService.showSingleDish(hash))
                .collect(Collectors.toList());

        return BestDTO.of(best, items);
    }
}
