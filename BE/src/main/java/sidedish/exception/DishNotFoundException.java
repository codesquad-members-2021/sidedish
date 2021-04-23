package sidedish.exception;

public class DishNotFoundException extends RuntimeException{

    public DishNotFoundException() {
        super("해당 dish가 존재하지 않습니다!");
    }
}
