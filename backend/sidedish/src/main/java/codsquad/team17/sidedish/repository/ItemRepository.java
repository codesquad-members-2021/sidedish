package codsquad.team17.sidedish.repository;

import codsquad.team17.sidedish.domain.Item;
import org.springframework.data.jdbc.repository.query.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import java.util.List;

public interface ItemRepository extends CrudRepository<Item, Long> {

    List<Item> findAll();

    List<Item> findAllByBestCategoryId(Long bestCategoryId);

    List<Item> findAllByDishCategoryId(Long dishtCategoryId);

    @Query("SELECT DISTINCT best_category_id FROM item WHERE best_category_id <> 6")
    List<Item> findDistinctByBestCategoryId();

    @Query("SELECT * FROM item WHERE dish_category_id != :dishCategoryId order by rand() LIMIT 10;")
    List<Item> findRandomItemsByItemId(@Param("dishCategoryId") Long dishCategoryId);
}
