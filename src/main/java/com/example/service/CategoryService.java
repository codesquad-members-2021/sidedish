package com.example.service;

import com.example.domain.Category;
import com.example.dto.Category.ResponseDTO;
import com.example.error.exception.CategoryNotFoundException;
import com.example.repository.CategoryRepository;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

@Service
public class CategoryService {

    private final CategoryRepository categoryRepository;

    public CategoryService(CategoryRepository categoryRepository) {
        this.categoryRepository = categoryRepository;
    }

    public List<ResponseDTO> findAll() {
        return categoryRepository.findAll().stream().map(ResponseDTO::of).collect(Collectors.toList());
    }
    public ResponseDTO responseDtoFindById(Long id) {
        Category category = categoryRepository.findById(id).orElseThrow(CategoryNotFoundException::new);
        return ResponseDTO.of(category);
    }
    public Category findById(Long id){
        return categoryRepository.findById(id).orElseThrow(CategoryNotFoundException::new);
    }
    public Category save(Category category){
        return categoryRepository.save(category);
    }
}
