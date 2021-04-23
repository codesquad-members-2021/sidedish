package com.codesquad.sidedish.utils;

import com.codesquad.sidedish.web.sidedish.*;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.PropertyNamingStrategy;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.params.ParameterizedTest;
import org.junit.jupiter.params.provider.Arguments;
import org.junit.jupiter.params.provider.MethodSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.core.env.Environment;
import org.springframework.core.env.Profiles;

import java.io.IOException;
import java.util.List;
import java.util.Map;
import java.util.stream.Stream;

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
    void createMainSidedishes() throws IOException {
        if (!environment.acceptsProfiles(Profiles.of("dev"))) {
            return;
        }
        List<ItemDTO> itemDTOS = SampleDataFactory.createMainSidedishes();

        assertThat(objectMapper.writerWithDefaultPrettyPrinter().writeValueAsString(itemDTOS))
                .isEqualTo(ItemDTOTestResults.MAIN_MENU);
    }

    @ParameterizedTest
    @MethodSource
    void createDetails(String hash, String expected) throws JsonProcessingException {
        if (!environment.acceptsProfiles(Profiles.of("dev"))) {
            return;
        }
        Map<String, DetailDTO> createDetails = SampleDataFactory.createDetails();

        assertThat(objectMapper.writerWithDefaultPrettyPrinter().writeValueAsString(createDetails.get(hash)))
                .isEqualTo(expected);
    }

    static Stream<Arguments> createDetails() {
        return Stream.of(
                Arguments.of("H9881", DetailDTOTestResults.H9881)
        );
    }
}
