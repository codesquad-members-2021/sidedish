package codsquad.team17.sidedish.controller;

import codsquad.team17.sidedish.domain.BestCategory;
import codsquad.team17.sidedish.domain.Image;
import codsquad.team17.sidedish.domain.Item;
import codsquad.team17.sidedish.dto.BestCategoryDto;
import codsquad.team17.sidedish.dto.ItemDto;
import codsquad.team17.sidedish.repository.BestCategoryRepository;
import codsquad.team17.sidedish.repository.ImageRepository;
import codsquad.team17.sidedish.repository.ItemRepository;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.IntStream;

@RestController
@RequestMapping("/best")
public class BestCategoryController {

    private final ItemRepository itemRepository;
    private final ImageRepository imageRepository;
    private final BestCategoryRepository bestCategoryRepository;

    public BestCategoryController (ItemRepository itemRepository,ImageRepository imageRepository,BestCategoryRepository bestCategoryRepository){
        this.itemRepository = itemRepository;
        this.imageRepository= imageRepository;
        this.bestCategoryRepository =bestCategoryRepository;
    }


    @GetMapping
    public ResponseEntity getBestCategoryList(){
        //list<item> -> list<itemdto>
        //entity : bestcategoy
        //bestcategorydto를 만들어서
        //리스트화

        List<Item> items = itemRepository.findAll();

        List<ItemDto> itemDtos = new ArrayList<>();
        List<BestCategoryDto> result = new ArrayList<>();

        for(Item item : items){
            Image image = imageRepository.findByItemIdLimit(item.getItemId()).orElseThrow(RuntimeException::new);
            ItemDto itemDto = new ItemDto(item,image);
            itemDtos.add(itemDto);
            BestCategory bestCategory = bestCategoryRepository.findById(item.getBestCategoryId()).orElseThrow(RuntimeException::new);
            BestCategoryDto bestCategoryDto = new BestCategoryDto(bestCategory,itemDtos);
            result.add(bestCategoryDto);
        }

        return new ResponseEntity(result, HttpStatus.OK);
    }
}
