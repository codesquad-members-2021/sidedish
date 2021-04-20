package develop.baminchan.service;

import develop.baminchan.entity.Banchan;
import develop.baminchan.repository.BanchanRepository;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.Optional;

@Service
public class BanchanService {

    private BanchanRepository banchanRepository;

    public BanchanService(BanchanRepository banchanRepository) {
        this.banchanRepository = banchanRepository;
    }

    public Banchan findBanchanByDetailHash(String detail_hash) {
        Banchan banchan = banchanRepository.findBanchanByDetail_hash(detail_hash);
        return banchan;
    }

    @Transactional
    public void createBanchan(Banchan banchan) {
        banchanRepository.save(banchan);
    }
}
