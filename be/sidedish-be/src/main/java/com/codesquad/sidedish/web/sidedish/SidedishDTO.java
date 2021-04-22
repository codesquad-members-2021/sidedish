package com.codesquad.sidedish.web.sidedish;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.PropertyNamingStrategy;

import java.io.File;
import java.io.IOException;
import java.util.List;

public class SidedishDTO {
    private long categoryId;
    private String name;
    private List<ItemDTO> items;

    public SidedishDTO() {
    }

    public SidedishDTO(long categoryId, String name, List<ItemDTO> items) {
        this.categoryId = categoryId;
        this.name = name;
        this.items = items;
    }

    public static List<SidedishDTO> listFrom(String jsonString) throws JsonProcessingException {
        ObjectMapper objectMapper = new ObjectMapper();
        objectMapper.setPropertyNamingStrategy(PropertyNamingStrategy.SNAKE_CASE);

        return objectMapper.readValue(
                jsonString,
                new TypeReference<List<SidedishDTO>>() {
                }
        );
    }

    public static List<SidedishDTO> listFrom(File jsonFile) throws IOException {
        ObjectMapper objectMapper = new ObjectMapper();
        objectMapper.setPropertyNamingStrategy(PropertyNamingStrategy.SNAKE_CASE);

        return objectMapper.readValue(
                jsonFile,
                new TypeReference<List<SidedishDTO>>() {
                }
        );
    }

    public long getCategoryId() {
        return categoryId;
    }

    public void setCategoryId(long categoryId) {
        this.categoryId = categoryId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public List<ItemDTO> getItems() {
        return items;
    }

    public void setItems(List<ItemDTO> items) {
        this.items = items;
    }

    public static final class SidedishDTOBuilder {
        private long categoryId;
        private String name;
        private List<ItemDTO> items;

        private SidedishDTOBuilder() {
        }

        public static SidedishDTOBuilder create() {
            return new SidedishDTOBuilder();
        }

        public SidedishDTOBuilder categoryId(long categoryId) {
            this.categoryId = categoryId;
            return this;
        }

        public SidedishDTOBuilder name(String name) {
            this.name = name;
            return this;
        }

        public SidedishDTOBuilder items(List<ItemDTO> items) {
            this.items = items;
            return this;
        }

        public SidedishDTO build() {
            return new SidedishDTO(categoryId, name, items);
        }
    }
}
