package com.codesquad.sidedish.web.sidedish.DTO;

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
