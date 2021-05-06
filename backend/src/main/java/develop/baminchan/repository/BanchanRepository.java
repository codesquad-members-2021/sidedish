package develop.baminchan.repository;

import develop.baminchan.entity.Banchan;
import org.springframework.data.jdbc.repository.query.Query;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface BanchanRepository extends CrudRepository<Banchan, Long> {
    @Query("select * from banchan where detail_hash = :detail_hash")
    Banchan findBanchanByDetail_hash(String detail_hash);

    @Query("select * from banchan where category_id = :category_id")
    List<Banchan> findBanchansByCategory_id(String category_id);

    @Query("select * from banchan where tag = :tag")
    List<Banchan> findBanchansbyTag(String tag);
}
