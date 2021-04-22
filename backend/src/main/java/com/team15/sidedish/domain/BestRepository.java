package com.team15.sidedish.domain;

import org.springframework.data.repository.CrudRepository;

import java.util.Set;

public interface BestRepository extends CrudRepository<Best, Integer> {

    @Override
    Set<Best> findAll();

}
