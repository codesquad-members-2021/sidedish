package codsquad.team17.sidedish.controller;

import codsquad.team17.sidedish.dto.ExceptionResponseDto;
import codsquad.team17.sidedish.exception.ImageNotFoundException;
import codsquad.team17.sidedish.service.ItemDetailService;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

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

    @ExceptionHandler(ImageNotFoundException.class)
    public ResponseEntity handleImageNotFoundException(Exception e) {
        return new ResponseEntity(new ExceptionResponseDto(e.getMessage()), HttpStatus.NOT_FOUND);
    }
}
