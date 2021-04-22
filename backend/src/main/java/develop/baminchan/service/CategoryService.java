package develop.baminchan.service;

import develop.baminchan.dto.BanchanDto;
import develop.baminchan.dto.CategoryDto;
import develop.baminchan.entity.Banchan;
import develop.baminchan.entity.Category;
import develop.baminchan.repository.BanchanRepository;
import develop.baminchan.repository.CategoryRepository;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class CategoryService {
    private CategoryRepository categoryRepository;
    private BanchanRepository banchanRepository;

    public CategoryService(CategoryRepository categoryRepository, BanchanRepository banchanRepository) {
        this.categoryRepository = categoryRepository;
        this.banchanRepository = banchanRepository;
    }

    public CategoryDto findBestBanchansByCategory(String category_id) {
        Category category = categoryRepository.findCategoryByCategory_id(category_id);
        CategoryDto categoryDto = CategoryDto.of(category, getBanchanListByCategoryId(category_id));
        return categoryDto;
    }

    private List<BanchanDto> getBanchanListByCategoryId(String catrgory_id) {
        List<BanchanDto> banchanDtoList = new ArrayList<>();
        List<Banchan> banchanList = new ArrayList<>();

        banchanList = banchanRepository.findBanchansByCategory_id(catrgory_id);
        for (int i = 0; i < banchanList.size(); i++) {
            banchanDtoList.add(BanchanDto.of(banchanList.get(i)));
        }
        return banchanDtoList;
    }
}
