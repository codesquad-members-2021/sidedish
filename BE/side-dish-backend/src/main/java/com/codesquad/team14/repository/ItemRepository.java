package com.codesquad.team14.repository;

import com.codesquad.team14.domain.Item;
import org.springframework.data.repository.CrudRepository;

import java.util.List;
import java.util.Optional;


public interface ItemRepository extends CrudRepository<Item, Long> {

    List<Item> findAllItemsByCategory(long l);

}

