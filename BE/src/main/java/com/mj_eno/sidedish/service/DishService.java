package com.mj_eno.sidedish.service;

import com.mj_eno.sidedish.domain.Image.ImageRepository;
import com.mj_eno.sidedish.domain.badge.Badge;
import com.mj_eno.sidedish.domain.badge.BadgeRepository;
import com.mj_eno.sidedish.domain.dish.Dish;
import com.mj_eno.sidedish.domain.dish.DishRepository;
import com.mj_eno.sidedish.domain.dishBadge.DishBadgeRepository;
import com.mj_eno.sidedish.web.dto.MainDishResponseDTO;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

@Service
public class DishService {

    public final DishRepository dishRepository;
    public final ImageRepository imageRepository;
    public final BadgeRepository badgeRepository;
    public final DishBadgeRepository dishBadgeRepository;

    public DishService(DishRepository dishRepository, ImageRepository imageRepository, BadgeRepository badgeRepository, DishBadgeRepository dishBadgeRepository) {
        this.dishRepository = dishRepository;
        this.imageRepository = imageRepository;
        this.badgeRepository = badgeRepository;
        this.dishBadgeRepository = dishBadgeRepository;
    }

    public List<MainDishResponseDTO> findAllMainDish() {
        return dishRepository.findAllByMenuCategoryId(1L).stream()
                .map(dish -> new MainDishResponseDTO(dish, getImage(dish), getBadges(dish)))
                .collect(Collectors.toList());
    }

    public String getImage(Dish dish) {
        return imageRepository.findByDishIdAndTopTrue(dish.getId()).get().getUrl();
    }

    public List<String> getBadges(Dish dish) {
        return dishBadgeRepository.findAllByDishId(dish.getId()).stream()
                .map(dishBadge -> badgeRepository.findById((long) dishBadge.getBadgeId()).get())
                .map(Badge::getName)
                .collect(Collectors.toList());
    }
}
