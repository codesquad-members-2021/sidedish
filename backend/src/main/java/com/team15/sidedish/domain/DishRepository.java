package com.team15.sidedish.domain;

import com.team15.sidedish.dto.DishDTO;
import org.springframework.data.jdbc.repository.query.Query;
import org.springframework.data.repository.CrudRepository;

import java.util.List;
import java.util.Optional;

public interface DishRepository extends CrudRepository<DishDTO, String> {

    @Query("select di.`hash` AS `detail_hash`, di.`top_image` AS `image`, de.`delivery_type`, di.`title`, di.`description`, di.`normal_price`, di.`special_price`, e.`badge`\n" +
            "from dish di \n" +
            "join delivery de ON di.`hash` = de.`dish_hash` \n" +
            "left outer join event e ON di.`hash` = e.`dish_hash` where di.`hash`=:hash;")
    @Override
    Optional<DishDTO> findById(String hash);

    @Query("select di.`hash` AS `detail_hash`, di.`top_image` AS `image`, de.`delivery_type`, di.`title`, di.`description`, di.`normal_price`, di.`special_price`, e.`badge` " +
            "from dish di JOIN delivery de on di.`hash` = de.`dish_hash` left outer join event e ON di.`hash` = e.`dish_hash` ")
    @Override
    List<DishDTO> findAll();

    @Query("select di.`hash` AS `detail_hash`, di.`top_image` AS `image`, de.`delivery_type`, di.`title`, di.`description`,  di.`normal_price`, di.`special_price`, e.`badge` " +
            "from dish di join delivery de on di.`hash` = de.`dish_hash` left outer join event e on di.`hash` = e.`dish_hash` " +
            "where di.`section_name` like concat('%', :section, '%')")
    List<DishDTO> findAllBySection(String section);

}
