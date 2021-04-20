package com.example.domain;

import org.springframework.data.annotation.Id;
import org.springframework.data.annotation.PersistenceConstructor;
import org.springframework.data.annotation.Transient;
import org.springframework.data.relational.core.mapping.Column;
import org.springframework.data.relational.core.mapping.MappedCollection;
import org.springframework.data.relational.core.mapping.Table;

import java.util.List;

@Table(value = "ORDERS")
public class Orders {

    @Id
    private final Long id;

    private final int count;

    @Column(value = "ITEM_ID")
    private final Long itemId;

    @PersistenceConstructor
    public Orders(Long id, int count, Long itemId) {
        this.id = id;
        this.count = count;
        this.itemId = itemId;
    }

    public Orders withId(Long id, int count, Long itemId) {
        return new Orders(id, count, itemId);
    }

    public static Orders of(int count, Long itemId) {
        return new Orders(null, count, itemId);
    }

    public Long getId() {
        return id;
    }

    public int getCount() {
        return count;
    }

    public Long getItemId() {
        return itemId;
    }

}
