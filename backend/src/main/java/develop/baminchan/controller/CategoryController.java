package develop.baminchan.controller;

import develop.baminchan.dto.CategoryDto;
import develop.baminchan.service.CategoryService;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/api")
public class CategoryController {

    private CategoryService categoryService;

    public CategoryController(CategoryService categoryService) {
        this.categoryService = categoryService;
    }

    @GetMapping("/best")
    public ResponseEntity<Message> getBest() {
        List<CategoryDto> categoryDtoList = categoryService.findAllBestBanchansByCategories();
        Message message = new Message(Message.OK, categoryDtoList);
        return new ResponseEntity(message, HttpStatus.OK);
    }

    @GetMapping("/best/{category_id}")
    public CategoryDto findBestBanchans(@PathVariable String category_id) {
        CategoryDto categoryDto = categoryService.findBestBanchansByCategory(category_id);
        return categoryDto;
    }

}
