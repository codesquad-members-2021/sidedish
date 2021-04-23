package codsquad.team17.sidedish.controller;

import codsquad.team17.sidedish.domain.BestCategory;
import codsquad.team17.sidedish.domain.Item;
import codsquad.team17.sidedish.dto.BestCategoryDto;
import codsquad.team17.sidedish.dto.ItemDto;
import codsquad.team17.sidedish.repository.BestCategoryRepository;
import codsquad.team17.sidedish.repository.ImageRepository;
import codsquad.team17.sidedish.repository.ItemRepository;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;
import java.util.stream.Collectors;
import java.util.stream.LongStream;

@RestController
@RequestMapping("/best")
public class BestCategoryController {
//    private static final int BEST_CATEGORY_ID_RANGE = 5;

    private final ItemRepository itemRepository;
    private final ImageRepository imageRepository;
    private final BestCategoryRepository bestCategoryRepository;

    public BestCategoryController(ItemRepository itemRepository, ImageRepository imageRepository,
                                  BestCategoryRepository bestCategoryRepository) {
        this.itemRepository = itemRepository;
        this.imageRepository = imageRepository;
        this.bestCategoryRepository = bestCategoryRepository;
    }

    @GetMapping
    public ResponseEntity getBestCategoryList() {
        List<Item> distinctBestCategoryList = itemRepository.findDistinctByBestCategoryId();

//        List<BestCategoryDto> result = LongStream.rangeClosed(1, BEST_CATEGORY_ID_RANGE).
//                mapToObj(bestCategoryId -> getBestCategoryDto(bestCategoryId))
//                .collect(Collectors.toList());

        List<BestCategoryDto> result = distinctBestCategoryList.stream()
                .map(item -> getBestCategoryDto(item.getBestCategoryId()))
                .collect(Collectors.toList());

        return new ResponseEntity(result, HttpStatus.OK);
    }

    @GetMapping("/{bestCategoryId}")
    public ResponseEntity getBestCategory(@PathVariable Long bestCategoryId) {
        return new ResponseEntity(getBestCategoryDto(bestCategoryId), HttpStatus.OK);
    }

    private BestCategoryDto getBestCategoryDto(Long bestCategoryId) {
        List<Item> items = itemRepository.findAllByBestCategoryId(bestCategoryId);
        List<ItemDto> itemDtos = items.stream()
                .map(item -> new ItemDto(item, imageRepository.findByItemIdLimit(item.getItemId())))
                .collect(Collectors.toList());

        BestCategory bestCategory = bestCategoryRepository.findById(bestCategoryId)
                .orElseThrow(RuntimeException::new); //TODO exception handling 하기

        return new BestCategoryDto(bestCategory, itemDtos);
    }
}
