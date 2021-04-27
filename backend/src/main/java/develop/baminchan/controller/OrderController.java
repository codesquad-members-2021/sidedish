package develop.baminchan.controller;

import develop.baminchan.entity.Order;
import develop.baminchan.service.OrderService;
import org.springframework.web.bind.annotation.*;

import java.util.Optional;

@RestController
public class OrderController {

    private OrderService orderService;

    public OrderController(OrderService orderService) {
        this.orderService = orderService;
    }

    @GetMapping("/order/{id}")
    public Optional<Order> findOrder(@PathVariable Long id) {
        Optional<Order> order = orderService.findById(id);
        return order;
    }

    @PostMapping("/order")
    public String createOrder(@RequestBody Order order) {
       orderService.createOrder(order);
       return "success";
    }
}
