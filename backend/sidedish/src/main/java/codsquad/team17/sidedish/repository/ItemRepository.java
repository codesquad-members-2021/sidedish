package codsquad.team17.sidedish.repository;

import codsquad.team17.sidedish.domain.Item;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface ItemRepository extends CrudRepository<Item, Long> {
    List<Item> findAll();
    List<Item> findAllByBestCategoryId(Long bestCategoryId);
}
