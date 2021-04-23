package com.codesquad.sidedish.utils;

import com.codesquad.sidedish.web.sidedish.ItemDTO;
import com.codesquad.sidedish.web.sidedish.ItemDTOTestResults;
import com.codesquad.sidedish.web.sidedish.SidedishDTO;
import com.codesquad.sidedish.web.sidedish.SidedishDTOTestResults;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.PropertyNamingStrategy;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.core.env.Environment;
import org.springframework.core.env.Profiles;

import java.util.List;

import static org.assertj.core.api.Assertions.assertThat;

@SpringBootTest
class SampleDataFactoryTest {

    @Autowired
    Environment environment;

    ObjectMapper objectMapper = new ObjectMapper().setPropertyNamingStrategy(PropertyNamingStrategy.SNAKE_CASE);

    @Test
    void createBestSidedishes() throws JsonProcessingException {
        if (!environment.acceptsProfiles(Profiles.of("dev"))) {
            return;
        }
        List<SidedishDTO> sidedishDTOs = SampleDataFactory.createBestSidedishes();

        assertThat(objectMapper.writerWithDefaultPrettyPrinter().writeValueAsString(sidedishDTOs))
                .isEqualTo(SidedishDTOTestResults.BEST_MENU);

    }

    @Test
    void createMainSidedishes() throws JsonProcessingException {
        if (!environment.acceptsProfiles(Profiles.of("dev"))) {
            return;
        }
        List<ItemDTO> itemDTOS = SampleDataFactory.createMainSidedishes();

        assertThat(objectMapper.writerWithDefaultPrettyPrinter().writeValueAsString(itemDTOS))
                .isEqualTo(ItemDTOTestResults.MAIN_MENU);
    }
}
