package develop.baminchan.controller;

import develop.baminchan.dto.CategoryDto;
import develop.baminchan.service.CategoryService;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class CategoryController {

    private CategoryService categoryService;

    public CategoryController(CategoryService categoryService) {
        this.categoryService = categoryService;
    }

    // TODO :
//    @GetMapping("/best")
//    public List<Optional<Category>> findAllBestCategories() {
//        return categoryService.findAllBestCategories();
//    }

    @GetMapping("/best/{category_id}")
    public CategoryDto findBestBanchans(@PathVariable String category_id) {
        CategoryDto categoryDto = categoryService.findBestBanchansByCategory(category_id);
        return categoryDto;
    }

}
