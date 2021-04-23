package sidedish.repository;

import org.springframework.data.repository.CrudRepository;
import sidedish.domain.Dish;

import java.util.Optional;

public interface DishRepository extends CrudRepository<Dish, Long> {

    Optional<Dish> findById(Long id);
}
