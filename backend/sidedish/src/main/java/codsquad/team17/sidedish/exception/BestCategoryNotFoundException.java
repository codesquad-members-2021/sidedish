package codsquad.team17.sidedish.exception;

public class BestCategoryNotFoundException extends RuntimeException{

    private static final String BEST_CATEGORY_NOT_FOUND_MESSAGE = "해당하는 BEST CATEGORY가 존재하지 않습니다";

    public BestCategoryNotFoundException() {
        super(BEST_CATEGORY_NOT_FOUND_MESSAGE);
    }
}
