package codsquad.team17.sidedish.controller;

import codsquad.team17.sidedish.domain.Item;
import codsquad.team17.sidedish.repository.ItemRepository;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/best")
public class BestCategoryController {

    private final ItemRepository itemRepository;

    public BestCategoryController (ItemRepository itemRepository){
        this.itemRepository = itemRepository;
    }


    @GetMapping
    public ResponseEntity getBestCategoryList(){



        return new ResponseEntity("", HttpStatus.OK);
    }
}
