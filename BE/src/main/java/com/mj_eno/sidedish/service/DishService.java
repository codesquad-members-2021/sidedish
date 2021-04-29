package com.mj_eno.sidedish.service;

import com.mj_eno.sidedish.domain.badge.Badge;
import com.mj_eno.sidedish.domain.badge.BadgeRepository;
import com.mj_eno.sidedish.domain.bestMenuCategory.BestMenuCategory;
import com.mj_eno.sidedish.domain.bestMenuCategory.BestMenuCategoryRepository;
import com.mj_eno.sidedish.domain.dish.Dish;
import com.mj_eno.sidedish.domain.dish.DishRepository;
import com.mj_eno.sidedish.domain.menuCategory.MenuCategoryRepository;
import com.mj_eno.sidedish.exception.EntityNotFoundException;
import com.mj_eno.sidedish.exception.ErrorMessage;
import com.mj_eno.sidedish.exception.OrderFailedException;
import com.mj_eno.sidedish.web.dto.*;
import org.springframework.stereotype.Service;

import java.util.Collections;
import java.util.List;
import java.util.stream.Collectors;

@Service
public class DishService {

    public final DishRepository dishRepository;
    public final BadgeRepository badgeRepository;
    public final MenuCategoryRepository menuCategoryRepository;
    public final BestMenuCategoryRepository bestMenuCategoryRepository;

    public DishService(DishRepository dishRepository, BadgeRepository badgeRepository, MenuCategoryRepository menuCategoryRepository, BestMenuCategoryRepository bestMenuCategoryRepository) {
        this.dishRepository = dishRepository;
        this.badgeRepository = badgeRepository;
        this.menuCategoryRepository = menuCategoryRepository;
        this.bestMenuCategoryRepository = bestMenuCategoryRepository;
    }

    // 모든 베스트 메뉴 요청
    public List<BestDishResponseDTO> findAllBestDish() {
        return bestMenuCategoryRepository.findAll().stream()
                .map(bestMenuCategory -> findAllBestDishByCategoryIdAndRandom(bestMenuCategory.getId()))
                .collect(Collectors.toList());
    }

    // 베스트 메뉴 카테고리 id에 해당하는 메뉴 중 랜덤 3개 요청
    public BestDishResponseDTO findAllBestDishByCategoryIdAndRandom(Long BestMenuCategoryId) {
        return new BestDishResponseDTO(
                findBestMenuCategoryById(BestMenuCategoryId),
                findByBestMenuCategoryIdAndRandomAndLimit(BestMenuCategoryId)
        );
    }

    private List<DishResponseDTO> findByBestMenuCategoryIdAndRandomAndLimit(Long categoryId) {
        return makeRandomId(dishRepository.findIdAllByBestMenuCategoryId(categoryId), 3).stream()
                .map(this::findById)
                .map(dish -> new DishResponseDTO(dish, getBadgesByDish(dish)))
                .collect(Collectors.toList());
    }

    private List<String> getBadgesByDish(Dish dish) {
        return dish.getBadgesId().stream()
                .map(this::findBadgeById)
                .map(Badge::getName)
                .collect(Collectors.toList());
    }

    // main, soup, side 메뉴 요청
    public List<DishResponseDTO> findAllDishByCategory(String dishCategory) {
        return dishRepository.findAllByMenuCategoryId(getMenuCategoryIdByDishCategory(dishCategory)).stream()
                .map(dish -> new DishResponseDTO(dish, getBadgesByDish(dish)))
                .collect(Collectors.toList());
    }

    // 메뉴의 디테일 정보 요청
    public DetailDishResponseDTO getDetailMenu(String hash) {
        return new DetailDishResponseDTO(hash, new DetailDishDTO(findDishByHash(hash)));
    }

    // 모든 메뉴에 대해 limit 만큼 램덤 요청
    public List<DishResponseDTO> findDishByRandomLimit(int limit) {
        return makeRandomId(dishRepository.findIdAllByDish(), limit).stream()
                .map(this::findById)
                .map(dish -> new DishResponseDTO(dish, getBadgesByDish(dish)))
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

    private List<Long> makeRandomId(List<Long> dishIdList, int to) {
        Collections.shuffle(dishIdList);
        return dishIdList.subList(0, to);
    }

    private Dish findById(Long id) {
        return dishRepository.findById(id).orElseThrow(
                () -> new EntityNotFoundException(ErrorMessage.ENTITY_NOT_FOUND)
        );
    }

    private Dish findDishByHash(String hash) {
        return dishRepository.findByHash(hash).orElseThrow(
                () -> new EntityNotFoundException(ErrorMessage.ENTITY_NOT_FOUND)
        );
    }

    private Badge findBadgeById(int id) {
        return badgeRepository.findById((long) id).orElseThrow(
                () -> new EntityNotFoundException(ErrorMessage.ENTITY_NOT_FOUND)
        );
    }

    private BestMenuCategory findBestMenuCategoryById(Long id) {
        return bestMenuCategoryRepository.findById(id).orElseThrow(
                () -> new EntityNotFoundException(ErrorMessage.ENTITY_NOT_FOUND)
        );
    }

    private Long getMenuCategoryIdByDishCategory(String dishCategory) {
        return menuCategoryRepository.findByName(dishCategory).orElseThrow(
                () -> new EntityNotFoundException(ErrorMessage.ENTITY_NOT_FOUND)
        ).getId();
    }
}
