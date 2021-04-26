package com.codesquad.sidedish.web.sidedish.DTO;

public class DetailDTO {
    private String hash;
    private DetailDataDTO data;

    public DetailDTO() {
    }

    public DetailDTO(String hash, DetailDataDTO data) {
        this.hash = hash;
        this.data = data;
    }

    public static DetailDTOBuilder builder() {
        return DetailDTOBuilder.create();
    }

    public String getHash() {
        return hash;
    }

    public void setHash(String hash) {
        this.hash = hash;
    }

    public DetailDataDTO getData() {
        return data;
    }

    public void setData(DetailDataDTO data) {
        this.data = data;
    }


    public static final class DetailDTOBuilder {
        private String hash;
        private DetailDataDTO data;

        private DetailDTOBuilder() {
        }

        public static DetailDTOBuilder create() {
            return new DetailDTOBuilder();
        }

        public DetailDTOBuilder hash(String hash) {
            this.hash = hash;
            return this;
        }

        public DetailDTOBuilder data(DetailDataDTO data) {
            this.data = data;
            return this;
        }

        public DetailDTO build() {
            return new DetailDTO(hash, data);
        }
    }
}
