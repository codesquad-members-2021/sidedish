package com.codesquad.sidedish.event;

import org.springframework.data.annotation.Id;

public class SidedishEventItem {
    @Id
    private Long id;

    private Long sidedishItem;
    private Long sidedishEvent;

    public SidedishEventItem(Long sidedishEvent) {
        this.sidedishEvent = sidedishEvent;
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
