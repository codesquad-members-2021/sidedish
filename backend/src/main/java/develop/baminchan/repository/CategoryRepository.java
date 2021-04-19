package develop.baminchan.repository;

import develop.baminchan.entity.Category;
import org.springframework.data.repository.CrudRepository;

public interface CategoryRepository extends CrudRepository<Category, String> { // categoryId 스트링값으로 가져온다?

}
