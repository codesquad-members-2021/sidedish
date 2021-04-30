package codsquad.team17.sidedish.exception;

public class DishCategoryNotFoundException extends RuntimeException {

    private static final String DISH_CATEGORY_NOT_FOUND_MESSAGE = "해당하는 DISH CATEGORY가 존재하지 않습니다";

    public DishCategoryNotFoundException() {
        super(DISH_CATEGORY_NOT_FOUND_MESSAGE);
    }
}
