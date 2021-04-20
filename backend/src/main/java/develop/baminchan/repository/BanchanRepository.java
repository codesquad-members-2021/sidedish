package develop.baminchan.repository;

import develop.baminchan.entity.Banchan;
import org.springframework.data.jdbc.repository.query.Query;
import org.springframework.data.repository.CrudRepository;

public interface BanchanRepository extends CrudRepository<Banchan, Long> {
    @Query("select * from banchan where detail_hash = :detail_hash")
    Banchan findBanchanByDetail_hash(String detail_hash);
}
