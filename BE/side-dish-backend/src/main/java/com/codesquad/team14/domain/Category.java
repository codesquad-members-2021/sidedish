package com.codesquad.team14.domain;

import org.springframework.data.annotation.Id;

import java.util.Set;

public class Category {

    @Id
    private Long id;
    private String name;
    private boolean best;
    private Set<Item> items;

    public Category(String name) {
        this.name = name;
    }

    public Long getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public boolean isBest() {
        return best;
    }

    public Set<Item> getItems() {
        return items;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setBest(boolean best) {
        this.best = best;
    }

    public void addItem(Item item) {
        items.add(item);
    }

    public void removeItem(Item item) {
        items.remove(item);
    }

    public Item findItem(Long itemId) {
        for (Item item : items) {
            if (item.getId().equals(itemId)) {
                return item;
            }
        }

        return null;
    }

    @Override
    public String toString() {
        return "Category{" +
                "id=" + id +
                ", name='" + name + '\'' +
                '}';
    }
}
