package codsquad.team17.sidedish.domain;

import org.springframework.data.annotation.Id;

public class Image {

    @Id
    private Long imageId;
    private String url;
    private Long itemId;

    public Image() {
    }

    public Image(Long imageId, String url, Long itemId) {
        this.imageId = imageId;
        this.url = url;
        this.itemId = itemId;
    }

    public Long getImageId() {
        return imageId;
    }

    public String getUrl() {
        return url;
    }

    public Long getItemId() {
        return itemId;
    }
}
