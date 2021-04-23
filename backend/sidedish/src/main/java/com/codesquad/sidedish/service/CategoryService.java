package com.codesquad.sidedish.service;

import com.codesquad.sidedish.domain.Category;
import com.codesquad.sidedish.domain.Item;
import com.codesquad.sidedish.dto.CategoryDto;
import com.codesquad.sidedish.dto.DetailItemDto;
import com.codesquad.sidedish.repository.CategoryRepository;
import com.codesquad.sidedish.repository.OrderRepository;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

@Service
public class CategoryService {

    CategoryRepository categoryRepository;
    OrderRepository orderRepository;

    public CategoryService(CategoryRepository categoryRepository, OrderRepository orderRepository) {
        this.categoryRepository = categoryRepository;
        this.orderRepository = orderRepository;
    }

    public List<CategoryDto> findAll() {
         return categoryRepository.findAll().stream().map(category -> Category.createCategoryDto(category)).collect(Collectors.toList());
    }

    public DetailItemDto findDetailItemDtoByHash(Long categoryId, Long hash) {
        Item item = categoryRepository.findById(categoryId).orElseThrow(IllegalAccessError::new).findItem(hash);
        return Item.createDetailItemDto(item);
    }

    public void order(Long categoryId, Long hash, int orderCount) {

        System.out.println("categoryId = " + categoryId);
        System.out.println("hash = " + hash);
        System.out.println("orderCount = " + orderCount);
        System.out.println("=======================================");
        Category category = categoryRepository.findById(categoryId).orElseThrow(IllegalArgumentException::new);

        Item item = category.findItem(hash);

        item.purchase(orderCount);

        System.out.println("category = " + category);

        categoryRepository.save(category);
    }

}
