package codsquad.team17.sidedish.service;

import codsquad.team17.sidedish.domain.Item;
import codsquad.team17.sidedish.dto.ItemDetailDto;
import codsquad.team17.sidedish.dto.RecommendedItemDto;
import codsquad.team17.sidedish.exception.ImageNotFoundException;
import codsquad.team17.sidedish.exception.ItemNotFoundException;
import codsquad.team17.sidedish.repository.ImageRepository;
import codsquad.team17.sidedish.repository.ItemRepository;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

@Service
public class ItemDetailService {
    private final ItemRepository itemRepository;
    private final ImageRepository imageRepository;

    public ItemDetailService(ItemRepository itemRepository, ImageRepository imageRepository) {
        this.itemRepository = itemRepository;
        this.imageRepository = imageRepository;
    }

    public ItemDetailDto getItemDetail(Long itemId) {
        Item item = itemRepository.findById(itemId)
                .orElseThrow(ItemNotFoundException::new);
        List<String> imageUrls = imageRepository.findUrlByItemId(itemId);

        List<Item> randomItems = itemRepository.findRandomItemsByItemId(item.getDishCategoryId());
        List<RecommendedItemDto> list = randomItems.stream()
                .map(item1 -> new RecommendedItemDto(item1, imageRepository.findTopImageByItemId(item1.getItemId())
                        .orElseThrow(ImageNotFoundException::new)))
                .collect(Collectors.toList());

        return new ItemDetailDto(item, imageUrls, list);
    }

}
