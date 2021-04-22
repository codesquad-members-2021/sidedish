package develop.baminchan.entity.banchan;

import com.fasterxml.jackson.annotation.JsonInclude;

@JsonInclude(JsonInclude.Include.NON_NULL)
public class BanchanDetailData {

    private String top_image;
    private String thumb_images;

    public BanchanDetailData(String top_image, String thumb_images) {
        this.top_image = top_image;
        this.thumb_images = thumb_images;
    }

    public String getTop_image() {
        return top_image;
    }

    public String getThumb_images() {
        return thumb_images;
    }

    @Override
    public String toString() {
        return "Data{" +
                "top_image='" + top_image + '\'' +
                ", thumb_images='" + thumb_images + '\'' +
                '}';
    }
}
