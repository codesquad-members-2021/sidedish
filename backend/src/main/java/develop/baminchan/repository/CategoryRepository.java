package develop.baminchan.repository;

import develop.baminchan.entity.Category;
import org.springframework.data.jdbc.repository.query.Query;
import org.springframework.data.repository.CrudRepository;

public interface CategoryRepository extends CrudRepository<Category, Long> {
    @Query("select * from category where category_id = :category_id")
    Category findCategoryByCategory_id(String category_id);
}
