package develop.baminchan.service;

import develop.baminchan.entity.Banchan;
import develop.baminchan.entity.Category;
import develop.baminchan.repository.CategoryRepository;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

@Service
public class CategoryService {
    private CategoryRepository categoryRepository;

    public CategoryService(CategoryRepository categoryRepository) {
        this.categoryRepository = categoryRepository;
    }

    public List<Optional<Category>> findAllBestCategories() {
        List<Optional<Category>> allBestCategories = new ArrayList<>();
        allBestCategories.add(categoryRepository.findById(17011200L));
        allBestCategories.add(categoryRepository.findById(17011000L));
        allBestCategories.add(categoryRepository.findById(17010200L));
        allBestCategories.add(categoryRepository.findById(17010300L));
        allBestCategories.add(categoryRepository.findById(17011400L));
       return allBestCategories;
    }

//    public List<Banchan> findBestBanchans(Long category_id) {
//    }
//
//    public List<Banchan> findMainBanchans() {
//    }
//
//    public List<Banchan> findSoupBanchans() {
//    }
//
//    public List<Banchan> findSideBanchans() {
//    }
}
