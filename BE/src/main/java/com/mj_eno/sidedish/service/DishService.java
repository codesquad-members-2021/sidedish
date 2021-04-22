package com.mj_eno.sidedish.service;

import com.mj_eno.sidedish.domain.dish.Dish;
import com.mj_eno.sidedish.domain.dish.DishRepository;
import com.mj_eno.sidedish.exception.EntityNotFoundException;
import com.mj_eno.sidedish.exception.ErrorMessage;
import com.mj_eno.sidedish.exception.OrderFailedException;
import com.mj_eno.sidedish.web.dto.*;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

@Service
public class DishService {

    public final DishRepository dishRepository;
    public final ImageService imageService;
    public final BadgeService badgeService;
    public final CategoryService categoryService;

    public DishService(DishRepository dishRepository, ImageService imageService, BadgeService badgeService, CategoryService categoryService) {
        this.dishRepository = dishRepository;
        this.imageService = imageService;
        this.badgeService = badgeService;
        this.categoryService = categoryService;
    }

    // 모든 베스트 메뉴 요청
    public List<BestDishResponseDTO> findAllBestDish() {
        return categoryService.findAllBestMenuCategory().stream()
                .map(bestMenuCategory -> findAllBestDishByCategoryIdAndRandom(bestMenuCategory.getId()))
                .collect(Collectors.toList());
    }

    // 베스트 메뉴 카테고리 id에 해당하는 메뉴 중 랜덤 3개 요청
    public BestDishResponseDTO findAllBestDishByCategoryIdAndRandom(Long BestMenuCategoryId) {
        return new BestDishResponseDTO(
                categoryService.findBestMenuCategoryById(BestMenuCategoryId),
                findByBestMenuCategoryIdAndRandomAndLimit(BestMenuCategoryId)
        );
    }

    private List<DishResponseDTO> findByBestMenuCategoryIdAndRandomAndLimit(Long categoryId) {
        return dishRepository.findByBestMenuCategoryIdAndRandomAndLimit(categoryId).stream()
                .map(dish -> new DishResponseDTO(dish, imageService.getTopImageUrlByDish(dish), badgeService.getBadgesByDish(dish)))
                .collect(Collectors.toList());
    }

    // main, soup, side 메뉴 요청
    public List<DishResponseDTO> findAllDishByCategory(String dishCategory) {
        return dishRepository.findAllByMenuCategoryId(categoryService.getMenuCategoryIdByDishCategory(dishCategory)).stream()
                .map(dish -> new DishResponseDTO(dish, imageService.getTopImageUrlByDish(dish), badgeService.getBadgesByDish(dish)))
                .collect(Collectors.toList());
    }

    // 메뉴의 디테일 정보 요청
    public DetailDishResponseDTO getDetailMenu(String hash) {
        return new DetailDishResponseDTO(hash, makeDetailDishDTO(findDishByHash(hash)));
    }

    private DetailDishDTO makeDetailDishDTO(Dish dish) {
        return new DetailDishDTO(
                dish,
                imageService.getTopImageUrlByDish(dish),
                imageService.findAllImageUrlByDish(dish),
                imageService.getAllDetailImageUrlByDish(dish)
        );
    }

    // 모든 메뉴에 대해 limit 만큼 램덤 요청
    public List<DishResponseDTO> findDishByRandomLimit(int limit) {
        return dishRepository.findByRandomAndLimit(limit).stream()
                .map(dish -> new DishResponseDTO(dish, imageService.getTopImageUrlByDish(dish), badgeService.getBadgesByDish(dish)))
                .collect(Collectors.toList());
    }

    // 주문하기
    public OrderDishResponseDTO orderDish(OrderDishRequestDTO requestDTO) {
        Dish orderDish = requestDTO.toEntity();
        Dish dish = findDishByHash(orderDish.getHash());
        if (!dish.orderCheck(orderDish)) {
            throw new OrderFailedException(ErrorMessage.ORDER_FAILED);
        }
        dish.order(orderDish);
        Dish saveDish = dishRepository.save(dish);
        return new OrderDishResponseDTO(saveDish);
    }

    private Dish findDishByHash(String hash) {
        return dishRepository.findByHash(hash).orElseThrow(
                () -> new EntityNotFoundException(ErrorMessage.ENTITY_NOT_FOUND)
        );
    }
}
