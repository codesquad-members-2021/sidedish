package com.codesquad.sidedish.service;

import com.codesquad.sidedish.domain.Item;
import com.codesquad.sidedish.dto.CategoryDto;
import com.codesquad.sidedish.repository.CategoryRepository;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

@Service
public class CategoryService {

    CategoryRepository categoryRepository;

    public CategoryService(CategoryRepository categoryRepository) {
        this.categoryRepository = categoryRepository;
    }

    public List<CategoryDto> findAll() {

         return categoryRepository.findAll().stream().map(category -> CategoryDto.of(category)).collect(Collectors.toList());
    }

    public Item findItemByHash(Long categoryId, String hash) {
        return categoryRepository.findById(categoryId).orElseThrow(IllegalAccessError::new).getItem(hash);
    }

}
