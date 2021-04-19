package develop.baminchan.repository;

import develop.baminchan.entity.Banchan;
import org.springframework.data.jdbc.repository.query.Query;
import org.springframework.data.repository.CrudRepository;

public interface BanchanRepository extends CrudRepository<Banchan, String> {

}
