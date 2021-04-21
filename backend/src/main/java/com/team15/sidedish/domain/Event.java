package com.team15.sidedish.domain;

import org.springframework.data.annotation.Id;

public class Event {
    @Id
    private Long id;

    private String badge;
    private String dishHash;

    public Event(){ }

    public Event(Long id, String badge, String dishHash) {
        this.id = id;
        this.badge = badge;
        this.dishHash = dishHash;
    }

    public Long getId() {
        return id;
    }

    public String getBadge() {
        return badge;
    }

    public String getDishHash() {
        return dishHash;
    }
}
