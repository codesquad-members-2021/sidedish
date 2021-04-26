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

    public static ObjectMapper objectMapper = new ObjectMapper()
            .setPropertyNamingStrategy(PropertyNamingStrategy.SNAKE_CASE);

    private SampleDataFactory() {
    }

    public static List<SidedishDTO> createBestSidedishes() {
        return jsonToObject(JSON_PATH_PREFIX + "best-sidedishes" + JSON_EXTENSION, new TypeReference<List<SidedishDTO>>() {
        });
    }

    public static List<ItemDTO> createMainSidedishes() {
        return createItemDtoListBy("main-sidedishes");
    }

    public static List<ItemDTO> createCourseSidedishes() {
        return createItemDtoListBy("course-sidedishes");
    }

    public static List<ItemDTO> createSoupSidedishes() {
        return createItemDtoListBy("soup-sidedishes");
    }

    public static List<ItemDTO> createSideSidedishes() {
        return createItemDtoListBy("side-sidedishes");
    }

    public static Map<String, DetailDTO> createDetails() {
        List<DetailDTO> detailDTOs = jsonToObject(JSON_PATH_PREFIX + "details" + JSON_EXTENSION, new TypeReference<List<DetailDTO>>() {
        });

        return detailDTOs.stream().collect(Collectors.toMap(DetailDTO::getHash, detailDTO -> detailDTO));
    }

    private static List<ItemDTO> createItemDtoListBy(String sidedishName) {
        return jsonToObject(JSON_PATH_PREFIX + sidedishName + JSON_EXTENSION, new TypeReference<List<ItemDTO>>() {
        });
    }

    private static <E> E jsonToObject(String jsonFilePath, TypeReference<E> typeReference) {
        try (InputStream is = new ClassPathResource(jsonFilePath).getInputStream()) {
            return objectMapper.readValue(is, typeReference);
        } catch (JsonParseException e) {
            throw new IllegalStateException("Json파일 파싱 중 에러 발생. jsonFilePath: " + jsonFilePath, e);
        } catch (IOException e) {
            throw new IllegalStateException("파일 읽는 중 에러 발생. jsonFilePath: " + jsonFilePath, e);
        }
    }
}
