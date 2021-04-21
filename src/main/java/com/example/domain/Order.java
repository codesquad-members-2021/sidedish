package com.example.domain;

import org.springframework.data.annotation.Id;
import org.springframework.data.annotation.PersistenceConstructor;
import org.springframework.data.relational.core.mapping.Column;
import org.springframework.data.relational.core.mapping.Table;

@Table(value = "ORDERS")
public class Order {

    @Id
    private final Long id;

    private final int count;

    @Column(value = "ITEM_ID")
    private final String itemId;

    @PersistenceConstructor
    private Order(Long id, int count, String itemId) {
        this.id = id;
        this.count = count;
        this.itemId = itemId;
    }

    public static Order of(int count, String itemId) {
        return new Order(null, count, itemId);
    }

    public Long getId() {
        return id;
    }

    public int getCount() {
        return count;
    }

    public String getItemId() {
        return itemId;
    }

}
