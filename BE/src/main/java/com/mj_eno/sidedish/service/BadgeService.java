package com.mj_eno.sidedish.service;

import com.mj_eno.sidedish.domain.badge.Badge;
import com.mj_eno.sidedish.domain.badge.BadgeRepository;
import com.mj_eno.sidedish.domain.dish.Dish;
import com.mj_eno.sidedish.domain.dishBadge.DishBadgeRepository;
import com.mj_eno.sidedish.exception.EntityNotFoundException;
import com.mj_eno.sidedish.exception.ErrorMessage;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

@Service
public class BadgeService {

    public final BadgeRepository badgeRepository;
    public final DishBadgeRepository dishBadgeRepository;

    public BadgeService(BadgeRepository badgeRepository, DishBadgeRepository dishBadgeRepository) {
        this.badgeRepository = badgeRepository;
        this.dishBadgeRepository = dishBadgeRepository;
    }

    public List<String> getBadgesByDish(Dish dish) {
        return dishBadgeRepository.findAllByDishId(dish.getId()).stream()
                .map(dishBadge -> findBadgeById((long) dishBadge.getBadgeId()))
                .map(Badge::getName)
                .collect(Collectors.toList());
    }

    private Badge findBadgeById(Long id) {
        return badgeRepository.findById(id).orElseThrow(
                () -> new EntityNotFoundException(ErrorMessage.ENTITY_NOT_FOUND)
        );
    }
}
