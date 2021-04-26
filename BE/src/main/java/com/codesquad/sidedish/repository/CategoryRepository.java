package com.codesquad.sidedish.repository;

import com.codesquad.sidedish.domain.Category;
import com.codesquad.sidedish.domain.Dish;
import org.springframework.data.jdbc.repository.query.Query;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface CategoryRepository extends CrudRepository<Category, Long> {
    @Query("SELECT * FROM dish WHERE type = :categoryType")
    public List<Dish> findDishesByCategory(String categoryType);
//String id, String mainImage, String alt, String deliveryType, String title, String description,
//                String normalPrice, String sellingPrice, String badge, Long categoryId, String topImage, String thumbImages,
//                String deliveryInfo, String deliveryFee, String detailSection, int stock, String point

    @Query("SELECT * FROM dish WHERE category = :categoryTypeNum AND id = :dishId")
    public Dish findDishByCategoryTypeAndDishId(Long categoryTypeNum, String dishId);

    @Query("select * from category where type = :categoryType")
    public Category findByType(String categoryType);
}
