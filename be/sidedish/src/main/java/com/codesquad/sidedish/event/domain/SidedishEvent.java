package com.codesquad.sidedish.event.domain;

import com.codesquad.sidedish.category.domain.SidedishItem;
import org.springframework.data.annotation.Id;

import java.util.HashSet;
import java.util.Set;

public class SidedishEvent {

    public static final int NOT_ON_SALE = -1;

    @Id
    private Long id;

    private String eventName;
    private String eventColor;
    private float eventSaleRate;

    private Set<SidedishEventItem> eventItems = new HashSet<>();

    public SidedishEvent(String eventName, String eventColor, int eventSaleRate) {
        this.eventName = eventName;
        this.eventColor = eventColor;
        this.eventSaleRate = eventSaleRate;
    }

    public int discount(SidedishItem item) {
        return (int) (item.getItemNormalPrice() * (eventSaleRate / 100));
    }

    public Long getId() {
        return id;
    }

    public String getEventName() {
        return eventName;
    }

    public String getEventColor() {
        return eventColor;
    }

    public Set<SidedishEventItem> getEventItems() {
        return eventItems;
    }

    public float getEventSaleRate() {
        return eventSaleRate;
    }

    @Override
    public String toString() {
        return "SidedishEvent{" +
                "id=" + id +
                ", eventName='" + eventName + '\'' +
                ", eventColor='" + eventColor + '\'' +
                ", eventSaleRate=" + eventSaleRate +
                ", eventItems=" + eventItems +
                '}';
    }
}
