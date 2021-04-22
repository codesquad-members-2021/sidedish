package develop.baminchan.service;

import develop.baminchan.dto.CategoryDto;
import develop.baminchan.entity.Category;
import develop.baminchan.repository.CategoryRepository;
import org.springframework.stereotype.Service;

@Service
public class CategoryService {
    private CategoryRepository categoryRepository;

    public CategoryService(CategoryRepository categoryRepository) {
        this.categoryRepository = categoryRepository;
    }

    public CategoryDto findBestBanchansByCategory(String category_id) {
        Category category = categoryRepository.findCategoryByCategory_id(category_id);
        CategoryDto categoryDto = CategoryDto.of(category);
        return categoryDto;
    }

}
