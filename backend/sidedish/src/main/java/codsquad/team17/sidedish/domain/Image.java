package codsquad.team17.sidedish.domain;

import org.springframework.data.annotation.Id;

public class Image {

    @Id
    private Long imageId;
    private String url;

    public Image() {
    }

    public Image(Long imageId, String url) {
        this.imageId = imageId;
        this.url = url;
    }
}
