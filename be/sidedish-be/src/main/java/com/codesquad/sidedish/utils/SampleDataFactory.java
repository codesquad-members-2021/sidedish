package com.codesquad.sidedish.utils;

import com.codesquad.sidedish.web.sidedish.DTO.ItemDTO;
import com.codesquad.sidedish.web.sidedish.DTO.SidedishDTO;
import com.codesquad.sidedish.web.sidedish.DTO.DetailDTO;
import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.PropertyNamingStrategy;
import org.springframework.core.io.ClassPathResource;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

public class SampleDataFactory {

    private SampleDataFactory() {

    }

    public static List<SidedishDTO> createBestSidedishes() {
        return jsonToObject("sample-data/best-sidedishes.json", new TypeReference<List<SidedishDTO>>() {
        });
    }

    public static List<ItemDTO> createMainSidedishes() {
        return jsonToObject("sample-data/main-sidedishes.json", new TypeReference<List<ItemDTO>>() {
        });
    }

    public static List<ItemDTO> createCourseSidedishes() {
        return jsonToObject("sample-data/course-sidedishes.json", new TypeReference<List<ItemDTO>>() {
        });
    }

    public static List<ItemDTO> createSoupSidedishes() {
        return jsonToObject("sample-data/soup-sidedishes.json", new TypeReference<List<ItemDTO>>() {
        });
    }

    public static List<ItemDTO> createSideSidedishes() {
        return jsonToObject("sample-data/side-sidedishes.json", new TypeReference<List<ItemDTO>>() {
        });
    }

    public static Map<String, DetailDTO> createDetails() {
        List<DetailDTO> detailDTOs = jsonToObject("sample-data/details.json", new TypeReference<List<DetailDTO>>() {
        });

        return detailDTOs.stream().collect(Collectors.toMap(DetailDTO::getHash, detailDTO -> detailDTO));
    }

    private static <E> E jsonToObject(String jsonFilePath, TypeReference<E> typeReference) {
        ObjectMapper objectMapper = new ObjectMapper();
        objectMapper.setPropertyNamingStrategy(PropertyNamingStrategy.SNAKE_CASE);

        try {
            return objectMapper.readValue(new ClassPathResource(jsonFilePath).getInputStream(), typeReference);
        } catch (IOException e) {
            throw new IllegalStateException("경로가 올바르지 않습니다. 경로: " + jsonFilePath, e);
        }
    }
}
