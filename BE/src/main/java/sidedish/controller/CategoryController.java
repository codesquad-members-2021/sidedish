package sidedish.controller;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import sidedish.domain.Category;
import sidedish.domain.CategoryType;
import sidedish.repository.CategoryRepository;

@RestController
@RequestMapping("/banchan-code")
public class CategoryController {

    private final CategoryRepository categoryRepository;

    public CategoryController(CategoryRepository categoryRepository) {
        this.categoryRepository = categoryRepository;
    }

    @GetMapping("/main")
    public ResponseEntity<Category> mainPage() {
        Category category = categoryRepository.findCategoryByCategoryType("main");
        return ResponseEntity.ok(category);
    }

}
