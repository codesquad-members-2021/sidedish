package com.codesquad.sidedish.SideDish.domain;

import org.springframework.data.jdbc.repository.query.Query;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface SaleRepository extends CrudRepository<Sale, String> {
    @Query("SELECT sale.* from sidedish.sale INNER JOIN sidedish.dish_sale ON sale.id = dish_sale.sale WHERE dish_sale.dish = :detailHash;")
    List<Sale> findAllByDish(String detailHash);
}
