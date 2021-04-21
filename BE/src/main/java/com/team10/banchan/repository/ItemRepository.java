package com.team10.banchan.repository;

import com.team10.banchan.model.Item;
import org.springframework.data.repository.CrudRepository;

import java.util.List;
import java.util.Optional;

public interface ItemRepository extends CrudRepository<Item, Long> {

    @Override
    List<Item> findAll();

    List<Item> findAllBySection(Long section);

    List<Item> findAllByCategory(Long category);

    Optional<Item> findByIdAndSection(Long id, Long section);
}
