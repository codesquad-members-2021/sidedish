package com.team15.sidedish.domain;

import com.team15.sidedish.dto.ItemDTO;
import org.springframework.data.jdbc.repository.query.Query;
import org.springframework.data.repository.CrudRepository;

import java.util.List;
import java.util.Optional;

public interface ItemRepository extends CrudRepository<ItemDTO, String> {

    @Query("SELECT di.`hash` AS `detail_hash`, di.`top_image` AS `image`, de.`delivery_type`, di.`title`, di.`description`, di.`n_price` AS `normal_price`, di.`s_price` AS `special_price`, di.`badge` from dish di JOIN delivery de on di.`hash` = de.`dish_hash` where de.`dish_hash`=:hash")
    @Override
    Optional<ItemDTO> findById(String hash);

    @Query("select di.`hash` AS `detail_hash`, di.`top_image` AS `image`, de.`delivery_type`, di.`title`, di.`description`, di.`n_price` AS `normal_price`, di.`s_price` AS `special_price`, di.`badge` from dish di JOIN delivery de on di.`hash` = de.`dish_hash`")
    @Override
    List<ItemDTO> findAll();

    @Query("select di.`hash` AS `detail_hash`, di.`top_image` AS `image`, de.`delivery_type`, di.`title`, di.`description`,  di.`n_price` AS `normal_price`, di.`s_price` AS `special_price`, di.`badge` from dish di JOIN delivery de on di.`hash` = de.`dish_hash` where di.`section_name` LIKE CONCAT('%', :section, '%')")
    List<ItemDTO> findAllBySection(String section);

}
