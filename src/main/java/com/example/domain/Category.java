package com.example.domain;

import org.springframework.data.annotation.Id;
import org.springframework.data.annotation.PersistenceConstructor;
import org.springframework.data.relational.core.mapping.MappedCollection;
import org.springframework.data.relational.core.mapping.Table;

import java.util.HashMap;
import java.util.Map;

@Table(value = "CATEGORY")
public class Category {

    @Id
    private final Long id;

    private final String name;

    @MappedCollection(idColumn = "CATEGORY_ID", keyColumn = "ITEM_ID")
    private Map<String, Item> items = new HashMap<>();

    @PersistenceConstructor
    private Category(Long id, String name) {
        this.id = id;
        this.name = name;
    }

    public static Category of(String name) {
        return new Category(null, name);
    }

    public void addItem(Item item) {
        if (!items.containsValue(item)) {
            this.items.put(item.getId(), item);
        }
    }

    public Item findItem(Long id) {
        return items.get(id);
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

    public Map<String, Item> getItems() {
        return items;
    }

    public void update(Item item) {
        this.items.replace(item.getId(), item);
    }

}
