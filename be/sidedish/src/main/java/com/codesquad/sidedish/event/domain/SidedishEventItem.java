package com.codesquad.sidedish.event.domain;

import org.springframework.data.annotation.Id;

public class SidedishEventItem {
    @Id
    private Long id;

    private Long sidedishItem;
    private final Long sidedishEvent;

    public SidedishEventItem(Long sidedishEvent) {
        this.sidedishEvent = sidedishEvent;
    }

    public Long getSidedishEvent() {
        return sidedishEvent;
    }

    @Override
    public String toString() {
        return "SidedishEventItem{" +
                "id=" + id +
                ", sidedishItemId=" + sidedishItem +
                ", sidedishEventId=" + sidedishEvent +
                '}';
    }
}
