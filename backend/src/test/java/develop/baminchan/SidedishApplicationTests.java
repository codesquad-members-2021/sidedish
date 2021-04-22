package develop.baminchan;

import develop.baminchan.entity.Banchan;
import develop.baminchan.repository.BanchanRepository;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.context.ApplicationContext;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

import static org.assertj.core.api.Assertions.assertThat;

@Transactional
@SpringBootTest
class SidedishApplicationTests {


	private Logger logger = LoggerFactory.getLogger(SidedishApplicationTests.class);
	@Autowired
	private ApplicationContext ctx;
	@Autowired
	private BanchanRepository banchanRepository;

	@Test
	@DisplayName("IoC컨테이너 정상 동작 확인")
	void contextLoads() {
		assertThat(logger).isNotNull();
		assertThat(ctx).isNotNull();
	}

	@Test
	@DisplayName("반찬레포에서 카테고리에 따라서 잘 가져오는지 확인")
	void getBanchanList() {
		List<Banchan> banchanList = banchanRepository.findBanchansByCategory_id("17011200");
		assertThat(banchanList).isNull();
	}
}
