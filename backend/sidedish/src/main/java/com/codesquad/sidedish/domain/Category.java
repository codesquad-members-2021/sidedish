package com.codesquad.sidedish.domain;

import org.springframework.data.annotation.Id;

import java.util.HashSet;
import java.util.Set;

public class Category {

    @Id
    private Long id;

    private String name;
    private Set<Item> items = new HashSet<>();



}
