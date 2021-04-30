package codsquad.team17.sidedish.controller;

import codsquad.team17.sidedish.dto.ExceptionResponseDto;
import codsquad.team17.sidedish.exception.BestCategoryNotFoundException;
import codsquad.team17.sidedish.service.BestCategoryService;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/dish/best")
public class BestCategoryController {

    private final BestCategoryService bestCategoryService;

    public BestCategoryController(BestCategoryService bestCategoryService) {
        this.bestCategoryService = bestCategoryService;
    }

    @GetMapping
    public ResponseEntity getBestCategoryList() {
        return new ResponseEntity(bestCategoryService.getBestCategoryList(), HttpStatus.OK);
    }

    @GetMapping("/{bestCategoryId}")
    public ResponseEntity getBestCategory(@PathVariable Long bestCategoryId) {
        return new ResponseEntity(bestCategoryService.getBestCategoryDto(bestCategoryId), HttpStatus.OK);
    }

    @ExceptionHandler(BestCategoryNotFoundException.class)
    public ResponseEntity handleBestCategoryNotFoundException(Exception e) {
        return new ResponseEntity(new ExceptionResponseDto(e.getMessage()), HttpStatus.NOT_FOUND);
    }
}
