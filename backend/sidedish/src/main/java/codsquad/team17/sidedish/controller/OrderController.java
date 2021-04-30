package codsquad.team17.sidedish.controller;

import codsquad.team17.sidedish.dto.ExceptionResponseDto;
import codsquad.team17.sidedish.exception.ItemStockEmptyException;
import codsquad.team17.sidedish.service.OrderService;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;

@RestController
@RequestMapping("/dish")
public class OrderController {

    private final OrderService orderService;

    public OrderController(OrderService orderService) {
        this.orderService = orderService;
    }

    @PutMapping("/{itemId}/order")
    public ResponseEntity orderItem(@PathVariable Long itemId, @RequestBody HashMap<String, Integer> body) {
        return new ResponseEntity(orderService.orderItem(itemId, body.get("order_amount")), HttpStatus.OK);
    }

    @ExceptionHandler(ItemStockEmptyException.class)
    public ResponseEntity handleItemStockEmptyException(Exception e) {
        return new ResponseEntity(new ExceptionResponseDto(e.getMessage()), HttpStatus.BAD_REQUEST);
    }
}
