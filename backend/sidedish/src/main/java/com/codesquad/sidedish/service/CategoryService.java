package com.codesquad.sidedish.service;

import com.codesquad.sidedish.domain.Category;
import com.codesquad.sidedish.domain.Item;
import com.codesquad.sidedish.domain.Order;
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

    public DetailItemDto findDetailItemDtoByHash(Long categoryId, String hash) {
        Item item = categoryRepository.findById(categoryId).orElseThrow(IllegalAccessError::new).getItem(hash);
        return Item.createDetailItemDto(item);
    }

    public void order(Long categoryId, String hash, int orderCount) {

        Category category = categoryRepository.findById(categoryId).orElseThrow(IllegalArgumentException::new);
        Item updateItem = category.getItem(hash);
        updateItem.purchase(orderCount);

        Order order = new Order(null, "hihi@naver.com", hash, orderCount);
//        Order order = Order.of("hihi@nave.com", hash, orderCount);

//        category.updateItemStock(updateItem);

        categoryRepository.save(category);
        orderRepository.save(order);
    }

}
