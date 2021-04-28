package codsquad.team17.sidedish.exception;

public class ItemNotFoundException extends RuntimeException{
    private static final String ITEM_NOT_FOUND_MESSAGE = "요청하는 아이템이 존재하지 않습니다.";

    public ItemNotFoundException() {
        super(ITEM_NOT_FOUND_MESSAGE);
    }
}
