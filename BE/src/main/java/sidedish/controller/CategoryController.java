package sidedish.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.PathVariable;
import sidedish.domain.Category;
import sidedish.repository.CategoryRepository;
import sidedish.service.dto.CategoryDTO;


@RestController
@RequestMapping("/banchan-code")
public class CategoryController {

    Logger logger = LoggerFactory.getLogger(CategoryController.class);

    private final CategoryRepository categoryRepository;

    public CategoryController(CategoryRepository categoryRepository) {
        this.categoryRepository = categoryRepository;
    }

    @GetMapping("/{title}")
    public ResponseEntity<CategoryDTO> mainPage(@PathVariable String title) {
        Category category = categoryRepository.findCategoryByTitle(title).orElseThrow(CategoryNotFoundException::new);
        CategoryDTO categoryDTO = new CategoryDTO(category);
        return ResponseEntity.ok(categoryDTO);
    }

}
