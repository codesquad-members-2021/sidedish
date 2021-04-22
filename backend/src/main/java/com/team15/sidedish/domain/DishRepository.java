package com.team15.sidedish.domain;

import com.team15.sidedish.dto.ItemDTO;
import org.springframework.data.jdbc.repository.query.Query;
import org.springframework.data.repository.CrudRepository;

import java.util.List;
import java.util.Optional;

public interface DishRepository extends CrudRepository<ItemDTO, String> {

    @Query("SELECT di.`hash` AS `detail_hash`, di.`top_image` AS `image`, di.`title` AS `alt`, de.`delivery_type`, di.`title`, di.`description`, di.`n_price`, di.`s_price`, e.`badge` from dish di JOIN delivery de on di.`hash` = de.`dish_hash` LEFT OUTER JOIN `event` e on e.`dish_hash` = di.`hash` where e.`dish_hash`=:hash")
    @Override
    Optional<ItemDTO> findById(String hash);

    @Query("select di.`hash` AS `detail_hash`, di.`top_image` AS `image`, di.`title` AS `alt`, de.`delivery_type`, di.`title`, di.`description`, di.`n_price`, di.`s_price`, e.`badge` from dish di JOIN delivery de on di.`hash` = de.`dish_hash` LEFT OUTER JOIN `event` e on e.`dish_hash` = di.`hash`")
    @Override
    List<ItemDTO> findAll();

}
