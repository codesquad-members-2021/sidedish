package codsquad.team17.sidedish.repository;

import codsquad.team17.sidedish.domain.Image;
import codsquad.team17.sidedish.domain.Item;
import org.springframework.data.jdbc.repository.query.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import java.util.List;
import java.util.Optional;

public interface ImageRepository extends CrudRepository<Image, Long> {

    @Query("SELECT image_id, url, item_id FROM image WHERE item_id=:itemId LIMIT 1;")
    Optional<Image> findTopImageByItemId(@Param("itemId") Long itemId);

    @Query("SELECT url FROM image WHERE item_id=:itemId LIMIT 5")
    List<String> findUrlByItemId(@Param("itemId") Long itemId);

    List<Image> findAllByItemId(Long item);
}
