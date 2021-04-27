package com.codesquad.sidedish.utils;

import com.codesquad.sidedish.web.sidedish.*;
import com.codesquad.sidedish.web.sidedish.DTO.DetailDTO;
import com.codesquad.sidedish.web.sidedish.DTO.ItemDTO;
import com.codesquad.sidedish.web.sidedish.ItemDTOTestResults;
import com.codesquad.sidedish.web.sidedish.DTO.SidedishDTO;
import com.codesquad.sidedish.web.sidedish.SidedishDTOTestResults;
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
    void createMainSidedishes() throws JsonProcessingException {
        if (!environment.acceptsProfiles(Profiles.of("dev"))) {
            return;
        }
        List<ItemDTO> itemDTOS = SampleDataFactory.createMainSidedishes();

        assertThat(objectMapper.writerWithDefaultPrettyPrinter().writeValueAsString(itemDTOS))
                .isEqualTo(ItemDTOTestResults.MAIN_MENU);
    }


    @Test
    void createCourseSidedishes() throws JsonProcessingException {
        if (!environment.acceptsProfiles(Profiles.of("dev"))) {
            return;
        }
        List<ItemDTO> itemDTOs = SampleDataFactory.createCourseSidedishes();

        assertThat(objectMapper.writerWithDefaultPrettyPrinter().writeValueAsString(itemDTOs))
                .isEqualTo(ItemDTOTestResults.COURSE_MENU);
    }

    @Test
    void createSoupSidedishes() throws JsonProcessingException {
        if (!environment.acceptsProfiles(Profiles.of("dev"))) {
            return;
        }
        List<ItemDTO> itemDTOs = SampleDataFactory.createSoupSidedishes();

        assertThat(objectMapper.writerWithDefaultPrettyPrinter().writeValueAsString(itemDTOs))
                .isEqualTo(ItemDTOTestResults.SOUP_MENU);
    }

    @Test
    void createSideSidedishes() throws JsonProcessingException {
        if (!environment.acceptsProfiles(Profiles.of("dev"))) {
            return;
        }
        List<ItemDTO> itemDTOs = SampleDataFactory.createSoupSidedishes();

        assertThat(objectMapper.writerWithDefaultPrettyPrinter().writeValueAsString(itemDTOs))
                .isEqualTo(ItemDTOTestResults.SIDE_MENU);
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
                Arguments.of("H9881", DetailDTOTestResults.H9881),
                Arguments.of("HDF4C", DetailDTOTestResults.HDF4C),
                Arguments.of("H7F20", DetailDTOTestResults.H7F20),
                Arguments.of("HA567", DetailDTOTestResults.HA567),
                Arguments.of("H206E", DetailDTOTestResults.H206E),
                Arguments.of("H75A2", DetailDTOTestResults.H75A2),
                Arguments.of("HA8B9", DetailDTOTestResults.HA8B9),
                Arguments.of("E055F", DetailDTOTestResults.E055F),
                Arguments.of("FDAEB", DetailDTOTestResults.FDAEB),
                Arguments.of("H762E", DetailDTOTestResults.H762E),
                Arguments.of("H05FB", DetailDTOTestResults.H05FB),
                Arguments.of("H0699", DetailDTOTestResults.H0699),
                Arguments.of("HBDEF", DetailDTOTestResults.HBDEF),
                Arguments.of("H82A2", DetailDTOTestResults.H82A2),
                Arguments.of("H213E", DetailDTOTestResults.H213E),
                Arguments.of("H7A16", DetailDTOTestResults.H7A16),
                Arguments.of("HDF73", DetailDTOTestResults.HDF73),
                Arguments.of("HF778", DetailDTOTestResults.HF778),
                Arguments.of("HFB53", DetailDTOTestResults.HFB53),
                Arguments.of("H077F", DetailDTOTestResults.H077F),
                Arguments.of("H4665", DetailDTOTestResults.H4665),
                Arguments.of("H1AA9", DetailDTOTestResults.H1AA9),
                Arguments.of("HEDFB", DetailDTOTestResults.HEDFB),
                Arguments.of("H4C5E", DetailDTOTestResults.H4C5E),
                Arguments.of("H8676", DetailDTOTestResults.H8676),
                Arguments.of("HAE92", DetailDTOTestResults.HAE92),
                Arguments.of("HAA29", DetailDTOTestResults.HAA29),
                Arguments.of("H296C", DetailDTOTestResults.H296C),
                Arguments.of("H5152", DetailDTOTestResults.H5152),
                Arguments.of("HAC68", DetailDTOTestResults.HAC68),
                Arguments.of("H72C3", DetailDTOTestResults.H72C3),
                Arguments.of("HA6EE", DetailDTOTestResults.HA6EE),
                Arguments.of("H8CD0", DetailDTOTestResults.H8CD0),
                Arguments.of("HE2E9", DetailDTOTestResults.HE2E9),
                Arguments.of("HAA47", DetailDTOTestResults.HAA47),
                Arguments.of("H3254", DetailDTOTestResults.H3254),
                Arguments.of("H26C7", DetailDTOTestResults.H26C7),
                Arguments.of("HFFF9", DetailDTOTestResults.HFFF9),
                Arguments.of("HBBCC", DetailDTOTestResults.HBBCC),
                Arguments.of("H1939", DetailDTOTestResults.H1939),
                Arguments.of("H8EA5", DetailDTOTestResults.H8EA5),
                Arguments.of("H602F", DetailDTOTestResults.H602F),
                Arguments.of("H9F0B", DetailDTOTestResults.H9F0B),
                Arguments.of("H0FC6", DetailDTOTestResults.H0FC6),
                Arguments.of("HCCFE", DetailDTOTestResults.HCCFE),
                Arguments.of("HB9C1", DetailDTOTestResults.HB9C1)
        );
    }
}
