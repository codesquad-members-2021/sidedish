package codsquad.team17.sidedish.exception;

public class ImageNotFoundException extends RuntimeException{
    private static final String IMAGE_NOT_FOUND_MESSAGE ="해당하는 이미지가 존재하지 않습니다";

    public ImageNotFoundException() {
        super(IMAGE_NOT_FOUND_MESSAGE);
    }
}
