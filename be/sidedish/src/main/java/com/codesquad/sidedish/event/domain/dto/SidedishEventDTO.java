package com.codesquad.sidedish.event.domain.dto;

import com.codesquad.sidedish.event.domain.SidedishEvent;

public class SidedishEventDTO {

    private Long id;
    private String name;
    private String colorHex;

    public SidedishEventDTO(SidedishEvent sidedishEvent) {
        this.id = sidedishEvent.getId();
        this.name = sidedishEvent.getEventName();
        this.colorHex = sidedishEvent.getEventColor();
    }

    public Long getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public String getColorHex() {
        return colorHex;
    }

    @Override
    public String toString() {
        return "SidedishEventDTO{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", colorHex='" + colorHex + '\'' +
                '}';
    }
}
