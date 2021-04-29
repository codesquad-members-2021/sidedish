package com.codesquad.sidedish.SideDish.domain;

import org.springframework.data.repository.CrudRepository;

public interface SaleRepository extends CrudRepository<Sale, String> {
//    List<Sale> findAllByDishDetailHash(String dishDetailHash);
}
