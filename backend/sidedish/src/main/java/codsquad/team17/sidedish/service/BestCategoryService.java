package codsquad.team17.sidedish.service;

import codsquad.team17.sidedish.domain.BestCategory;
import codsquad.team17.sidedish.domain.Item;
import codsquad.team17.sidedish.dto.BestCategoryDto;
import codsquad.team17.sidedish.dto.ItemDto;
import codsquad.team17.sidedish.exception.BestCategoryNotFoundException;
import codsquad.team17.sidedish.repository.BestCategoryRepository;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

@Service
public class BestCategoryService {
    private final BestCategoryRepository bestCategoryRepository;

    private final ItemService itemService;

    public BestCategoryService(BestCategoryRepository bestCategoryRepository,
                               ItemService itemService) {
        this.bestCategoryRepository = bestCategoryRepository;
        this.itemService = itemService;
    }

    public List<BestCategoryDto> getBestCategoryList() {
        List<Item> distinctBestCategoryList = itemService.findDistinctByBestCategoryId();

        return distinctBestCategoryList.stream()
                .map(item -> getBestCategoryDto(item.getBestCategoryId()))
                .collect(Collectors.toList());
    }

    public BestCategoryDto getBestCategoryDto(Long bestCategoryId) {
        List<Item> items = itemService.findAllByBestCategoryId(bestCategoryId);
        List<ItemDto> itemDtos = itemService.getItemDtoList(items);
        return new BestCategoryDto(findBestCategoryId(bestCategoryId), itemDtos);
    }

    public BestCategory findBestCategoryId(Long bestCategoryId) {
        return bestCategoryRepository.findById(bestCategoryId)
                .orElseThrow(BestCategoryNotFoundException::new);
    }
}
