package com.team10.banchan.repository;

import com.team10.banchan.model.Item;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface ItemRepository extends CrudRepository<Item, Long> {
    @Override
    List<Item> findAll();
}
