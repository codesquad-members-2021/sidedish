package codsquad.team17.sidedish.repository;

import codsquad.team17.sidedish.domain.Item;
import org.springframework.data.repository.CrudRepository;

public interface ItemRepository extends CrudRepository<Item, Long> {

}
