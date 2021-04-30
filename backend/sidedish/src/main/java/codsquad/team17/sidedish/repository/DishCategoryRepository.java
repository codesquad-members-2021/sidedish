package codsquad.team17.sidedish.repository;

import codsquad.team17.sidedish.domain.DishCategory;
import org.springframework.data.repository.CrudRepository;

public interface DishCategoryRepository extends CrudRepository<DishCategory, Long> {
}
