package com.codesquad.sidedish.utils;

import com.codesquad.sidedish.NotReadJsonFileException;
import com.codesquad.sidedish.NotParsingJsonFileException;
import com.codesquad.sidedish.web.sidedish.DTO.DetailDTO;
import com.codesquad.sidedish.web.sidedish.DTO.ItemDTO;
import com.codesquad.sidedish.web.sidedish.DTO.SidedishDTO;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.PropertyNamingStrategy;
import org.springframework.core.io.ClassPathResource;

import java.io.IOException;
import java.io.InputStream;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

public class SampleDataFactory {

    private static final String JSON_PATH_PREFIX = "sample-data/";
    private static final String JSON_EXTENSION = ".json";

    public static final ObjectMapper objectMapper = new ObjectMapper()
            .setPropertyNamingStrategy(PropertyNamingStrategy.SNAKE_CASE);

    private SampleDataFactory() {
    }

    public static List<SidedishDTO> createBestSidedishes() {
        return jsonToObject("best-sidedishes", new TypeReference<List<SidedishDTO>>() {
        });
    }

    public static List<ItemDTO> createMainSidedishes() {
        return jsonToObject("main-sidedishes", new TypeReference<List<ItemDTO>>() {
        });
    }

    public static List<ItemDTO> createCourseSidedishes() {
        return jsonToObject("course-sidedishes", new TypeReference<List<ItemDTO>>() {
        });
    }

    public static List<ItemDTO> createSoupSidedishes() {
        return jsonToObject("soup-sidedishes", new TypeReference<List<ItemDTO>>() {
        });
    }

    public static List<ItemDTO> createSideSidedishes() {
        return jsonToObject("side-sidedishes", new TypeReference<List<ItemDTO>>() {
        });
    }

    public static Map<String, DetailDTO> createDetails() {
        List<DetailDTO> detailDTOs = jsonToObject("details", new TypeReference<List<DetailDTO>>() {
        });

        return detailDTOs.stream().collect(Collectors.toMap(DetailDTO::getHash, detailDTO -> detailDTO));
    }

    private static <E> E jsonToObject(String jsonFileName, TypeReference<E> typeReference) {
        try (InputStream is = new ClassPathResource(JSON_PATH_PREFIX + jsonFileName + JSON_EXTENSION).getInputStream()) {
            return objectMapper.readValue(is, typeReference);
        } catch (JsonParseException e) {
            throw new NotParsingJsonFileException(JSON_PATH_PREFIX + jsonFileName + JSON_EXTENSION, e);
        } catch (IOException e) {
            throw new NotReadJsonFileException(JSON_PATH_PREFIX + jsonFileName + JSON_EXTENSION, e);
        }
    }
}
