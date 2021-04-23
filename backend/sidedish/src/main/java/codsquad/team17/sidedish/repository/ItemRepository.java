package codsquad.team17.sidedish.repository;

import codsquad.team17.sidedish.domain.Item;
import org.springframework.data.jdbc.repository.query.Query;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface ItemRepository extends CrudRepository<Item, Long> {
    List<Item> findAll();

    List<Item> findAllByBestCategoryId(Long bestCategoryId);

    List<Item> findAllByDishCategoryId(Long dishtCategoryId);

    @Query("SELECT DISTINCT best_category_id FROM item")
    List<Item> findDistinctByBestCategoryId();

    @Query("SELECT DISTINCT dish_category_id FROM item")
    List<Item> findDistinctByDishCategoryId();
}
