package codsquad.team17.sidedish.repository;

import codsquad.team17.sidedish.domain.Image;
import org.springframework.data.jdbc.repository.query.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import java.util.Optional;

public interface ImageRepository extends CrudRepository<Image, Long> {

    @Query("SELECT image_id, url, item_id FROM image WHERE item_id=:itemId LIMIT 1;")
    Image findByItemIdLimit(@Param("itemId") Long itemId);
}
