package com.mj_eno.sidedish.domain.dishBadge;

import org.springframework.data.annotation.Id;

public class DishBadge {

    @Id
    Long id;
    int dishId;
    int badgeId;

    public Long getId() {
        return id;
    }

    public int getDishId() {
        return dishId;
    }

    public int getBadgeId() {
        return badgeId;
    }
}
