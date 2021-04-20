package com.team10.banchan.model;

import org.springframework.data.annotation.Id;

import java.util.Set;

public class Section {
    @Id
    private Long id;
    private Set<Item> items;
    private String name;
}
