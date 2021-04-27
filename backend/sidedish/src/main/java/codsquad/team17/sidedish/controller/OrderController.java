package codsquad.team17.sidedish.controller;

import codsquad.team17.sidedish.service.OrderService;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/order")
public class OrderController {
    private OrderService orderService;

    public OrderController(OrderService orderService) {
        this.orderService = orderService;
    }

    @PutMapping("/{itemId}/{itemAmount}")
    public ResponseEntity orderItem(@PathVariable Long itemId, @PathVariable int itemAmount) {
        return new ResponseEntity(orderService.orderItem(itemId, itemAmount), HttpStatus.OK);
    }
}
