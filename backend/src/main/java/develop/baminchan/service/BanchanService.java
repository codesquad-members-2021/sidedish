package develop.baminchan.service;

import develop.baminchan.dto.BanchanDto;
import develop.baminchan.dto.banchan.BanchanDetailDto;
import develop.baminchan.entity.Banchan;
import develop.baminchan.repository.BanchanRepository;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class BanchanService {

    private BanchanRepository banchanRepository;

    public BanchanService(BanchanRepository banchanRepository) {
        this.banchanRepository = banchanRepository;
    }

    public BanchanDto findBanchanByDetailHash(String detail_hash) {
        Banchan banchan = banchanRepository.findBanchanByDetail_hash(detail_hash);
        BanchanDto banchanDto = BanchanDto.of(banchan);
        return banchanDto;
    }

    @Transactional
    public void createBanchan(Banchan banchan) {
        banchanRepository.save(banchan);
    }

    public BanchanDetailDto findBanchanDetailByDetailHash(String detail_hash) {
        Banchan banchan = banchanRepository.findBanchanByDetail_hash(detail_hash);
        System.out.println(banchan);
        BanchanDetailDto banchanDetailDto = new BanchanDetailDto(banchan.getBanchanDetail());
        return banchanDetailDto;
    }
}
