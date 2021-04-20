package com.example.domain;

import org.springframework.data.annotation.Id;
import org.springframework.data.annotation.PersistenceConstructor;
import org.springframework.data.relational.core.mapping.MappedCollection;
import org.springframework.data.relational.core.mapping.Table;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

@Table(value = "CATEGORY")
public class Category {

    @Id
    private final Long id;

    private final String name;

    @MappedCollection(idColumn = "CATEGORY_ID", keyColumn = "CATEGORY_KEY")
    private List<Item> items = new ArrayList<>();

    @PersistenceConstructor
    public Category(Long id, String name) {
        this.id = id;
        this.name = name;
    }

    public Category withId(Long id, String name) {
        return new Category(id, name);
    }

    public static Category of(String name) {
        return new Category(null, name);
    }

    public void addItem(Item item) {
        if(!items.contains(item)) {
            this.items.add(item);
        }
    }

    public void removeItem(Item item) {
        this.items.remove(item);
    }

    public Long getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public List<Item> getItems() {
        return items;
    }

}
