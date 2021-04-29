package com.mj_eno.sidedish.service;

import com.mj_eno.sidedish.domain.bestMenuCategory.BestMenuCategory;
import com.mj_eno.sidedish.domain.bestMenuCategory.BestMenuCategoryRepository;
import com.mj_eno.sidedish.domain.menuCategory.MenuCategoryRepository;
import com.mj_eno.sidedish.exception.EntityNotFoundException;
import com.mj_eno.sidedish.exception.ErrorMessage;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CategoryService {

    public final MenuCategoryRepository menuCategoryRepository;
    public final BestMenuCategoryRepository bestMenuCategoryRepository;

    public CategoryService(MenuCategoryRepository menuCategoryRepository, BestMenuCategoryRepository bestMenuCategoryRepository) {
        this.menuCategoryRepository = menuCategoryRepository;
        this.bestMenuCategoryRepository = bestMenuCategoryRepository;
    }

    public List<BestMenuCategory> findAllBestMenuCategory() {
        return bestMenuCategoryRepository.findAll();
    }

    public BestMenuCategory findBestMenuCategoryById(Long id) {
        return bestMenuCategoryRepository.findById(id).orElseThrow(
                () -> new EntityNotFoundException(ErrorMessage.ENTITY_NOT_FOUND)
        );
    }

    public Long getMenuCategoryIdByDishCategory(String dishCategory) {
        return menuCategoryRepository.findByName(dishCategory).orElseThrow(
                () -> new EntityNotFoundException(ErrorMessage.ENTITY_NOT_FOUND)
        ).getId();
    }
}
