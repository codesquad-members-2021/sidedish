package com.mj_eno.sidedish.domain.dishBadge;

import org.springframework.data.annotation.Id;

public class DishBadge {

    @Id
    private Long id;
    private int badgeId;

    public Long getId() {
        return id;
    }

    public int getBadgeId() {
        return badgeId;
    }
}
