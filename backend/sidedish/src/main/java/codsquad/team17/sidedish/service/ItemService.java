package codsquad.team17.sidedish.service;

import codsquad.team17.sidedish.domain.Item;
import codsquad.team17.sidedish.dto.ItemDto;
import codsquad.team17.sidedish.repository.ItemRepository;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

@Service
public class ItemService {
    private final ItemRepository itemRepository;
    private final ImageService imageService;

    public ItemService(ItemRepository itemRepository, ImageService imageService) {
        this.itemRepository = itemRepository;
        this.imageService = imageService;
    }

    public List<Item> findAllByBestCategoryId(Long bestCategoryId) {
        return itemRepository.findAllByBestCategoryId(bestCategoryId);
    }

    public List<Item> findAllByDishCategoryId(Long dishCategoryId) {
        return itemRepository.findAllByDishCategoryId(dishCategoryId);
    }

    public List<Item> findDistinctByBestCategoryId() {
        return itemRepository.findDistinctByBestCategoryId();
    }

    public List<ItemDto> getItemDtoList(List<Item> items) {
        return items.stream()
                .map(item -> new ItemDto(item, imageService.findTopImageByItemId(item.getItemId())))
                .collect(Collectors.toList());

    }
}

