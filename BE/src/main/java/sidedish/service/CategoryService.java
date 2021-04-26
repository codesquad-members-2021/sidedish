package sidedish.service;

import org.springframework.stereotype.Service;
import sidedish.domain.Category;
import sidedish.exception.CategoryNotFoundException;
import sidedish.repository.CategoryRepository;
import sidedish.service.dto.CategoryDTO;

@Service
public class CategoryService {

    private final CategoryRepository categoryRepository;

    public CategoryService(CategoryRepository categoryRepository) {
        this.categoryRepository = categoryRepository;
    }

    public Category findById(Long id) {
        Category category = categoryRepository.findById(id).orElseThrow(CategoryNotFoundException::new);
        return category;
    }

    public Category findByTitle(String title) {
        Category category = categoryRepository.findCategoryByTitle(title)
                .orElseThrow(CategoryNotFoundException::new);
        return category;
    }

    public Category save(Category category) {
        return categoryRepository.save(category);
    }

    public CategoryDTO convertToCategoryDTO(String title) {
        Category category = findByTitle(title);
        return new CategoryDTO(category);
    }
}
