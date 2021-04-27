package develop.baminchan.controller;

import develop.baminchan.entity.Order;
import develop.baminchan.service.OrderService;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class OrderController {

    private OrderService orderService;

    public OrderController(OrderService orderService) {
        this.orderService = orderService;
    }

    @PostMapping("/order")
    public String createOrder(@RequestBody Order order) {
       orderService.createOrder(order);
       return "success";
    }
}
