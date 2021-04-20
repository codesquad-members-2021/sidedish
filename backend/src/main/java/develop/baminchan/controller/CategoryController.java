package develop.baminchan.controller;

import develop.baminchan.entity.Banchan;
import develop.baminchan.entity.Category;
import develop.baminchan.service.CategoryService;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;
import java.util.Optional;

@RestController
public class CategoryController {

    private CategoryService categoryService;

    public CategoryController(CategoryService categoryService) {
        this.categoryService = categoryService;
    }

    @GetMapping("/best")
    public List<Optional<Category>> findAllBestCategories() {
        return categoryService.findAllBestCategories();
    }

//    @GetMapping("/best/{category_id}")
//    public List<Banchan> findBestBanchans(@PathVariable Long category_id) {
//        return categoryService.findBestBanchans(category_id);
//    }
//
//    @GetMapping("/main")
//    public List<Banchan> findMainBanchans() {
//        return categoryService.findMainBanchans();
//    }
//
//    @GetMapping("/soup")
//    public List<Banchan> findSoupBanchans() {
//       return categoryService.findSoupBanchans();
//    }
//
//    @GetMapping("/side")
//    public List<Banchan> findSideBanchans() {
//        return categoryService.findSideBanchans();
//    }
}
