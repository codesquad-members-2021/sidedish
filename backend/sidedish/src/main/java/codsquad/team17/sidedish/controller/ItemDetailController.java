package codsquad.team17.sidedish.controller;

import codsquad.team17.sidedish.service.ItemDetailService;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("dish/detail")
public class ItemDetailController {
    private final ItemDetailService itemDetailService;

    public ItemDetailController(ItemDetailService itemDetailService) {
        this.itemDetailService = itemDetailService;
    }

    @GetMapping("/{itemId}")
    public ResponseEntity getItemsDetail(@PathVariable Long itemId) {
        return new ResponseEntity(itemDetailService.getItemDetail(itemId), HttpStatus.OK);
    }
}
