package sidedish.repository;

import org.springframework.data.repository.CrudRepository;
import sidedish.domain.Category;

import java.util.Optional;

public interface CategoryRepository extends CrudRepository<Category, Long> {

    Optional<Category> findCategoryByTitle(String title);
}
