package sidedish.repository;

import org.springframework.data.repository.CrudRepository;
import sidedish.domain.Category;
import sidedish.domain.CategoryType;

public interface CategoryRepository extends CrudRepository<Category, Long> {

    Category findCategoryByCategoryType(String categoryType);
}
