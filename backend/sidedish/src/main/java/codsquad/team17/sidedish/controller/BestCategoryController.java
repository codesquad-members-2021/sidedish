package codsquad.team17.sidedish.controller;

import codsquad.team17.sidedish.service.BestCategoryService;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

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
}
