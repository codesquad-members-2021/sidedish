package com.example.service;

import com.example.domain.Category;
import com.example.dto.Category.ResponseDTO;
import com.example.repository.CategoryRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

@Service
public class CategoryService {

    private final CategoryRepository categoryRepository;

    @Autowired
    public CategoryService(CategoryRepository categoryRepository) {
        this.categoryRepository = categoryRepository;
    }

    public List<ResponseDTO> findAll() {
        return categoryRepository.findAll().stream().map(ResponseDTO::of).collect(Collectors.toList());
    }
    public ResponseDTO findById(Long id) {
        Category category = categoryRepository.findById(id).orElseThrow(NoSuchFieldError::new);
        return ResponseDTO.of(category);
    }
}
