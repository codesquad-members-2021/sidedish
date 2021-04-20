package com.team10.banchan.model;

import org.springframework.data.annotation.Id;

import java.util.HashSet;
import java.util.Set;

public class Section {
    @Id
    private final Long id;
    private final String name;
    private final Set<Item> items;

    Section(Long id, String name, Set<Item> items) {
        this.id = id;
        this.name = name;
        this.items = items;
    }

    public Long getId() {
        return id;
    }

    public Set<Item> getItems() {
        return items;
    }

    public String getName() {
        return name;
    }

    public static Section newSection(String name) {
        return new Section(null, name, new HashSet<>());
    }
}
