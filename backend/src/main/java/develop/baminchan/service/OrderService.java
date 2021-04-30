package develop.baminchan.service;

import develop.baminchan.entity.Order;
import develop.baminchan.repository.OrderRepository;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
public class OrderService {

    private OrderRepository orderRepository;

    public OrderService(OrderRepository orderRepository) {
        this.orderRepository = orderRepository;
    }

    public Order createOrder(Order order) {
        return orderRepository.save(order);
    }

    public Optional<Order> findById(Long id) {
        Optional<Order> order = orderRepository.findById(id);
        return order;
    }
}
