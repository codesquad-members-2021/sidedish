package com.codesquad.sidedish.SideDish.domain;

import org.springframework.data.jdbc.repository.query.Query;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface ImageRepository extends CrudRepository<Image, String> {
    @Query("SELECT image.* from sidedish.image INNER JOIN sidedish.dish_image ON image.id = dish_image.image WHERE image.type = 'thumb' AND dish_image.dish = :detailHash;")
    List<Image> findThumbImagesByDish(String detailHash);

    @Query("SELECT image.* from sidedish.image INNER JOIN sidedish.dish_image ON image.id = dish_image.image WHERE image.type = 'detail' AND dish_image.dish = :detailHash;")
    List<Image> findDetailImagesByDish(String detailHash);
}
