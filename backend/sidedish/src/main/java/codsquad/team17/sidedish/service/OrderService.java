package codsquad.team17.sidedish.service;

import codsquad.team17.sidedish.domain.Item;
import codsquad.team17.sidedish.dto.OrderDto;
import codsquad.team17.sidedish.exception.ItemNotFoundException;
import codsquad.team17.sidedish.repository.ItemRepository;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class OrderService {

    private final ItemRepository itemRepository;

    public OrderService(ItemRepository itemRepository) {
        this.itemRepository = itemRepository;
    }

    @Transactional
    public OrderDto orderItem(Long itemId, int itemAmount) {
        Item item = itemRepository.findById(itemId).orElseThrow(ItemNotFoundException::new);
        OrderDto orderDto = new OrderDto(item);
        orderDto.orderItem(itemAmount);
        item.updateStock(orderDto);

        itemRepository.save(item);

        return orderDto;
    }
}
