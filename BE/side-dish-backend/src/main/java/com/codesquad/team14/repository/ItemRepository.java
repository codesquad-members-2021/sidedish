package com.codesquad.team14.repository;

import com.codesquad.team14.domain.Item;
import org.springframework.data.repository.CrudRepository;

import java.util.List;


public interface ItemRepository extends CrudRepository<Item, Long> {

    @Override
    List<Item> findAll();

    List<Item> findByCategory(String category);
}

