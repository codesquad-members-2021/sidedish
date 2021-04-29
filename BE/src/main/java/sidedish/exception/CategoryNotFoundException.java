package sidedish.exception;

public class CategoryNotFoundException extends NotFoundException {
    private static final String CATEGORY_NOT_FOUND_MESSAGE = "해당 카테고리가 존재하지 않습니다!";

    public CategoryNotFoundException() {
        super(CATEGORY_NOT_FOUND_MESSAGE);
    }
}
