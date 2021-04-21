package com.codesquad.sidedish.event;

import org.springframework.data.annotation.Id;
import org.springframework.data.relational.core.mapping.MappedCollection;

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
