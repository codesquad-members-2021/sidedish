package codsquad.team17.sidedish.service;

import codsquad.team17.sidedish.domain.Item;
import codsquad.team17.sidedish.repository.ItemRepository;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ItemService {
    private final ItemRepository itemRepository;

    public ItemService(ItemRepository itemRepository) {
        this.itemRepository = itemRepository;
    }

    public List<Item> findAllByBestCategoryId(Long bestCategoryId) {
        return itemRepository.findAllByBestCategoryId(bestCategoryId);
    }

    public List<Item> findDistinctByBestCategoryId() {
        return itemRepository.findDistinctByBestCategoryId();
    }
}
