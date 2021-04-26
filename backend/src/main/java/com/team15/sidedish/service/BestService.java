package com.team15.sidedish.service;

import com.team15.sidedish.domain.Best;
import com.team15.sidedish.domain.BestRepository;
import com.team15.sidedish.dto.BestDTO;
import com.team15.sidedish.dto.ItemDTO;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

@Service
public class BestService {

    private BestRepository bestRepository;
    private ItemService itemService;

    public BestService(BestRepository bestRepository, ItemService itemService) {
        this.bestRepository = bestRepository;
        this.itemService = itemService;
    }

    public List<BestDTO> showAllBestDishes() {
        return bestRepository.findAll()
                .stream()
                .map(best -> showSingleBestDish(best.getCategoryId()))
                .collect(Collectors.toList());
    }

    public BestDTO showSingleBestDish(Long categoryId) {
        List<String> bestDish = bestRepository.findByCategoryId(categoryId);
        Best best = bestRepository.findById(categoryId).orElseThrow(IllegalArgumentException::new);

        List<ItemDTO> items = bestDish
                .stream()
                .map(hash -> itemService.showSingleDish(hash))
                .collect(Collectors.toList());

        return BestDTO.of(best, items);
    }
}
