package com.example.domain;

import com.example.dto.UserDto;
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
    private List<Order> orders = new ArrayList<>();

    @PersistenceConstructor
    private User(Long id, String email, String password) {
        this.id = id;
        this.email = email;
        this.password = password;
    }

    public static User of(String email, String password) {
        return new User(null, email, password);
    }

    public static User map(UserDto userDto) {
        return new User(null, userDto.getEmail(), userDto.getPassword());
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

    public void addOrder(Order order) {
        orders.add(order);
    }

    public boolean isMatchedPassword(String password) {
        return this.password.equals(password);
    }

    public List<Order> getOrders() {
        return orders;
    }

}
