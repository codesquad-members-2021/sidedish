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

import static org.junit.jupiter.api.Assertions.assertAll;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.core.env.Environment;
import org.springframework.core.env.Profiles;

import java.util.List;
import java.util.Map;

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


    @Test
    void createDetails() {
        if (!environment.acceptsProfiles(Profiles.of("dev"))) {
            return;
        }
        Map<String, DetailDTO> createDetails = SampleDataFactory.createDetails();

        assertAll(
                () -> assertThat(objectMapper.writerWithDefaultPrettyPrinter().writeValueAsString(createDetails.get("H9881")))
                        .isEqualTo(DetailDTOTestResults.H9881),
                
                () -> assertThat(objectMapper.writerWithDefaultPrettyPrinter().writeValueAsString(createDetails.get("HDF4C")))
                        .isEqualTo(DetailDTOTestResults.HDF4C),
                
                () -> assertThat(objectMapper.writerWithDefaultPrettyPrinter().writeValueAsString(createDetails.get("H7F20")))
                        .isEqualTo(DetailDTOTestResults.H7F20),
                
                () -> assertThat(objectMapper.writerWithDefaultPrettyPrinter().writeValueAsString(createDetails.get("HA567")))
                        .isEqualTo(DetailDTOTestResults.HA567),
                
                () -> assertThat(objectMapper.writerWithDefaultPrettyPrinter().writeValueAsString(createDetails.get("H206E")))
                        .isEqualTo(DetailDTOTestResults.H206E),

                () -> assertThat(objectMapper.writerWithDefaultPrettyPrinter().writeValueAsString(createDetails.get("H75A2")))
                        .isEqualTo(DetailDTOTestResults.H75A2),

                () -> assertThat(objectMapper.writerWithDefaultPrettyPrinter().writeValueAsString(createDetails.get("HA8B9")))
                        .isEqualTo(DetailDTOTestResults.HA8B9),

                () -> assertThat(objectMapper.writerWithDefaultPrettyPrinter().writeValueAsString(createDetails.get("E055F")))
                        .isEqualTo(DetailDTOTestResults.E055F),

                () -> assertThat(objectMapper.writerWithDefaultPrettyPrinter().writeValueAsString(createDetails.get("FDAEB")))
                        .isEqualTo(DetailDTOTestResults.FDAEB),

                () -> assertThat(objectMapper.writerWithDefaultPrettyPrinter().writeValueAsString(createDetails.get("H762E")))
                        .isEqualTo(DetailDTOTestResults.H762E),

                () -> assertThat(objectMapper.writerWithDefaultPrettyPrinter().writeValueAsString(createDetails.get("H05FB")))
                        .isEqualTo(DetailDTOTestResults.H05FB),

                () -> assertThat(objectMapper.writerWithDefaultPrettyPrinter().writeValueAsString(createDetails.get("H0699")))
                        .isEqualTo(DetailDTOTestResults.H0699),

                () -> assertThat(objectMapper.writerWithDefaultPrettyPrinter().writeValueAsString(createDetails.get("HBDEF")))
                        .isEqualTo(DetailDTOTestResults.HBDEF),

                () -> assertThat(objectMapper.writerWithDefaultPrettyPrinter().writeValueAsString(createDetails.get("H82A2")))
                        .isEqualTo(DetailDTOTestResults.H82A2),

                () -> assertThat(objectMapper.writerWithDefaultPrettyPrinter().writeValueAsString(createDetails.get("H213E")))
                        .isEqualTo(DetailDTOTestResults.H213E),

                () -> assertThat(objectMapper.writerWithDefaultPrettyPrinter().writeValueAsString(createDetails.get("H7A16")))
                        .isEqualTo(DetailDTOTestResults.H7A16),

                () -> assertThat(objectMapper.writerWithDefaultPrettyPrinter().writeValueAsString(createDetails.get("HDF73")))
                        .isEqualTo(DetailDTOTestResults.HDF73),

                () -> assertThat(objectMapper.writerWithDefaultPrettyPrinter().writeValueAsString(createDetails.get("HF778")))
                        .isEqualTo(DetailDTOTestResults.HF778),

                () -> assertThat(objectMapper.writerWithDefaultPrettyPrinter().writeValueAsString(createDetails.get("HFB53")))
                        .isEqualTo(DetailDTOTestResults.HFB53),

                () -> assertThat(objectMapper.writerWithDefaultPrettyPrinter().writeValueAsString(createDetails.get("H077F")))
                        .isEqualTo(DetailDTOTestResults.H077F),

                () -> assertThat(objectMapper.writerWithDefaultPrettyPrinter().writeValueAsString(createDetails.get("H4665")))
                        .isEqualTo(DetailDTOTestResults.H4665),

                () -> assertThat(objectMapper.writerWithDefaultPrettyPrinter().writeValueAsString(createDetails.get("H1AA9")))
                        .isEqualTo(DetailDTOTestResults.H1AA9),

                () -> assertThat(objectMapper.writerWithDefaultPrettyPrinter().writeValueAsString(createDetails.get("HEDFB")))
                        .isEqualTo(DetailDTOTestResults.HEDFB),

                () -> assertThat(objectMapper.writerWithDefaultPrettyPrinter().writeValueAsString(createDetails.get("H4C5E")))
                        .isEqualTo(DetailDTOTestResults.H4C5E),

                () -> assertThat(objectMapper.writerWithDefaultPrettyPrinter().writeValueAsString(createDetails.get("H8676")))
                        .isEqualTo(DetailDTOTestResults.H8676),

                () -> assertThat(objectMapper.writerWithDefaultPrettyPrinter().writeValueAsString(createDetails.get("HAE92")))
                        .isEqualTo(DetailDTOTestResults.HAE92),

                () -> assertThat(objectMapper.writerWithDefaultPrettyPrinter().writeValueAsString(createDetails.get("HAA29")))
                        .isEqualTo(DetailDTOTestResults.HAA29),

                () -> assertThat(objectMapper.writerWithDefaultPrettyPrinter().writeValueAsString(createDetails.get("H296C")))
                        .isEqualTo(DetailDTOTestResults.H296C),

                () -> assertThat(objectMapper.writerWithDefaultPrettyPrinter().writeValueAsString(createDetails.get("H5152")))
                        .isEqualTo(DetailDTOTestResults.H5152),

                () -> assertThat(objectMapper.writerWithDefaultPrettyPrinter().writeValueAsString(createDetails.get("HAC68")))
                        .isEqualTo(DetailDTOTestResults.HAC68),

                () -> assertThat(objectMapper.writerWithDefaultPrettyPrinter().writeValueAsString(createDetails.get("H72C3")))
                        .isEqualTo(DetailDTOTestResults.H72C3),

                () -> assertThat(objectMapper.writerWithDefaultPrettyPrinter().writeValueAsString(createDetails.get("HA6EE")))
                        .isEqualTo(DetailDTOTestResults.HA6EE),

                () -> assertThat(objectMapper.writerWithDefaultPrettyPrinter().writeValueAsString(createDetails.get("H8CD0")))
                        .isEqualTo(DetailDTOTestResults.H8CD0),

                () -> assertThat(objectMapper.writerWithDefaultPrettyPrinter().writeValueAsString(createDetails.get("HE2E9")))
                        .isEqualTo(DetailDTOTestResults.HE2E9),

                () -> assertThat(objectMapper.writerWithDefaultPrettyPrinter().writeValueAsString(createDetails.get("HAA47")))
                        .isEqualTo(DetailDTOTestResults.HAA47),

                () -> assertThat(objectMapper.writerWithDefaultPrettyPrinter().writeValueAsString(createDetails.get("H3254")))
                        .isEqualTo(DetailDTOTestResults.H3254),

                () -> assertThat(objectMapper.writerWithDefaultPrettyPrinter().writeValueAsString(createDetails.get("H26C7")))
                        .isEqualTo(DetailDTOTestResults.H26C7),

                () -> assertThat(objectMapper.writerWithDefaultPrettyPrinter().writeValueAsString(createDetails.get("HFFF9")))
                        .isEqualTo(DetailDTOTestResults.HFFF9),

                () -> assertThat(objectMapper.writerWithDefaultPrettyPrinter().writeValueAsString(createDetails.get("HBBCC")))
                        .isEqualTo(DetailDTOTestResults.HBBCC),

                () -> assertThat(objectMapper.writerWithDefaultPrettyPrinter().writeValueAsString(createDetails.get("H1939")))
                        .isEqualTo(DetailDTOTestResults.H1939),

                () -> assertThat(objectMapper.writerWithDefaultPrettyPrinter().writeValueAsString(createDetails.get("H8EA5")))
                        .isEqualTo(DetailDTOTestResults.H8EA5),

                () -> assertThat(objectMapper.writerWithDefaultPrettyPrinter().writeValueAsString(createDetails.get("H602F")))
                        .isEqualTo(DetailDTOTestResults.H602F),

                () -> assertThat(objectMapper.writerWithDefaultPrettyPrinter().writeValueAsString(createDetails.get("H9F0B")))
                        .isEqualTo(DetailDTOTestResults.H9F0B),

                () -> assertThat(objectMapper.writerWithDefaultPrettyPrinter().writeValueAsString(createDetails.get("H0FC6")))
                        .isEqualTo(DetailDTOTestResults.H0FC6),

                () -> assertThat(objectMapper.writerWithDefaultPrettyPrinter().writeValueAsString(createDetails.get("HCCFE")))
                        .isEqualTo(DetailDTOTestResults.HCCFE),

                () -> assertThat(objectMapper.writerWithDefaultPrettyPrinter().writeValueAsString(createDetails.get("HB9C1")))
                        .isEqualTo(DetailDTOTestResults.HB9C1)
        );
    }
}
