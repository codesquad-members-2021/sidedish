package com.team15.sidedish.service;

import com.team15.sidedish.domain.Best;
import com.team15.sidedish.domain.BestRepository;
import org.springframework.stereotype.Service;

import java.util.Set;

@Service
public class BestService {

    private BestRepository bestRepository;

    public BestService(BestRepository bestRepository) {
        this.bestRepository = bestRepository;
    }

    public Set<Best> showAllBestDishes() {
        return bestRepository.findAll();
    }

    public Best showSingleBestDish(Integer categoryId) {
        return bestRepository.findById(categoryId).orElseThrow(IllegalArgumentException::new);
    }
}
