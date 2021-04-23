package codsquad.team17.sidedish.service;

import codsquad.team17.sidedish.domain.DishCategory;
import codsquad.team17.sidedish.domain.Item;
import codsquad.team17.sidedish.dto.DishCategoryDto;
import codsquad.team17.sidedish.dto.ItemDto;
import codsquad.team17.sidedish.repository.DishCategoryRepository;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class DishCategoryService {
    private final DishCategoryRepository dishCategoryRepository;
    private final ItemService itemService;
    private final ImageService imageService;

    public DishCategoryService(DishCategoryRepository dishCategoryRepository, ItemService itemService, ImageService imageService) {
        this.dishCategoryRepository = dishCategoryRepository;
        this.itemService = itemService;
        this.imageService = imageService;
    }

    public DishCategory findDishCategoryId(Long dishCategoryId) {
        return dishCategoryRepository.findById(dishCategoryId).orElseThrow(RuntimeException::new);
    }

    public DishCategoryDto getDishCategoryDto(Long dishCategoryId) {
        List<Item> items = itemService.findAllByDishCategoryId(dishCategoryId);
        List<ItemDto> itemDtos = itemService.getItemDtoList(items);
        return new DishCategoryDto(findDishCategoryId(dishCategoryId), itemDtos);
    }
}
