package codsquad.team17.sidedish.exception;

public class ItemStockEmptyException extends RuntimeException {

    private static final String ITEM_STOCK_EMPTY_MESSAGE = "재고를 초과하는 주문을 요청하셨습니다";

    public ItemStockEmptyException() {
        super(ITEM_STOCK_EMPTY_MESSAGE);
    }
}
