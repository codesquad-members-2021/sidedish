package com.example.domain;

import org.springframework.data.annotation.Id;
import org.springframework.data.annotation.PersistenceConstructor;
import org.springframework.data.relational.core.mapping.MappedCollection;
import org.springframework.data.relational.core.mapping.Table;

import java.util.*;

@Table(value = "USERS")
public class User {

    @Id
    private final Long id;

    private final String email;

    private final String password;

    @MappedCollection(idColumn = "USER_ID", keyColumn = "USER_KEY")
    private List<Orders> orders = new ArrayList<>();

    @PersistenceConstructor
    public User(Long id, String email, String password) {
        this.id = id;
        this.email = email;
        this.password = password;
    }

    public static User of(String email, String password) {
        return new User(null, email, password);
    }

    public User withId(Long id, String email, String password) {
        return new User(id, email, password);
    }

    public Long getId() {
        return id;
    }

    public String getEmail() {
        return email;
    }

    public String getPassword() {
        return password;
    }

    public void addOrder(Orders order) {
        orders.add(order);
    }

    public List<Orders> getOrders() {
        return orders;
    }

}
