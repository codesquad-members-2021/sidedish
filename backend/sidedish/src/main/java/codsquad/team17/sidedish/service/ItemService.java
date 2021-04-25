package codsquad.team17.sidedish.service;

import codsquad.team17.sidedish.domain.Item;
import codsquad.team17.sidedish.dto.ItemDto;
import codsquad.team17.sidedish.repository.ImageRepository;
import codsquad.team17.sidedish.repository.ItemRepository;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

@Service
public class ItemService {
    private final ItemRepository itemRepository;
    private final ImageRepository imageRepository;

    public ItemService(ItemRepository itemRepository, ImageRepository imageRepository) {
        this.itemRepository = itemRepository;
        this.imageRepository = imageRepository;
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
                .map(item -> new ItemDto(item, imageRepository
                        .findTopImageByItemId(item.getItemId())
                        .orElseThrow(RuntimeException::new)))
                .collect(Collectors.toList());
    }
}

