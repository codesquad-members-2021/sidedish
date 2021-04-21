package com.codesquad.sidedish.event.domain;

import org.springframework.data.annotation.Id;

import java.util.HashSet;
import java.util.Set;

public class SidedishEvent {

    @Id
    private Long id;
    private String eventName;
    private String eventColor;

    private Set<SidedishEventItem> eventItems = new HashSet<>();

    public SidedishEvent(String eventName, String eventColor) {
        this.eventName = eventName;
        this.eventColor = eventColor;
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

    @Override
    public String toString() {
        return "SidedishEvent{" +
                "id=" + id +
                ", eventName='" + eventName + '\'' +
                ", eventColor='" + eventColor + '\'' +
                ", eventItems=" + eventItems +
                '}';
    }
}
