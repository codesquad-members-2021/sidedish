package develop.baminchan.dto.banchan;

import com.fasterxml.jackson.annotation.JsonInclude;

import java.util.Set;

@JsonInclude(JsonInclude.Include.NON_NULL)
public class BanchanDetailDataDto {

    private String top_image;
    private Set<String> thumb_images;

    public BanchanDetailDataDto(String top_image, Set<String> thumb_images) {
        this.top_image = top_image;
        this.thumb_images = thumb_images;
    }

    public BanchanDetailDataDto(DataDtoBuilder dataDtoBuilder) {
        this.top_image = dataDtoBuilder.top_image;
        this.thumb_images = dataDtoBuilder.thumb_images;
    }

    public String getTop_image() {
        return top_image;
    }

    public Set<String> getThumb_images() {
        return thumb_images;
    }

    public static class DataDtoBuilder {

        private String top_image;
        private Set<String> thumb_images;

        DataDtoBuilder() {

        }

        public DataDtoBuilder setTop_image(String top_image) {
            this.top_image = top_image;
            return this;
        }

        public DataDtoBuilder setThumb_images(Set<String> thumb_images) {
            this.thumb_images = thumb_images;
            return this;
        }

        public BanchanDetailDataDto build() {
            return new BanchanDetailDataDto(this);
        }
    }
}
