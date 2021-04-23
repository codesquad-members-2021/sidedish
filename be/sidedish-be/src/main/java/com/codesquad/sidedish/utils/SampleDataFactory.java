package com.codesquad.sidedish.utils;

import com.codesquad.sidedish.web.sidedish.ItemDTO;
import com.codesquad.sidedish.web.sidedish.SidedishDTO;
import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.PropertyNamingStrategy;
import org.springframework.core.io.ClassPathResource;

import java.io.File;
import java.io.IOException;
import java.util.List;

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

    private static <E> E jsonToObject(String jsonFilePath, TypeReference<E> typeReference) {
        ObjectMapper objectMapper = new ObjectMapper();
        objectMapper.setPropertyNamingStrategy(PropertyNamingStrategy.SNAKE_CASE);

        try {
            File file = new ClassPathResource(jsonFilePath).getFile();

            return objectMapper.readValue(file, typeReference);
        } catch (IOException e) {
            throw new IllegalStateException("경로가 올바르지 않습니다. 경로: " + jsonFilePath, e);
        }
    }
}
