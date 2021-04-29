package sidedish.exception;

public class DishNotFoundException extends NotFoundException {
    private static final String DISH_NOT_FOUND_MESSAGE = "해당 dish가 존재하지 않습니다!";

    public DishNotFoundException() {
        super(DISH_NOT_FOUND_MESSAGE);
    }
}
