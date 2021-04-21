package com.team10.banchan.model;

import org.springframework.data.annotation.Id;

public class Section {

    @Id
    private final Long id;
    private final String name;

    Section(Long id, String name) {
        this.id = id;
        this.name = name;
    }

    public static Section newSection(String name) {
        return new Section(null, name);
    }

    public Long getId() {
        return id;
    }

    public String getName() {
        return name;
    }
}
