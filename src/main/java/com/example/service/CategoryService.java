package com.example.service;

import com.example.domain.Category;
import com.example.domain.Item;
import com.example.dto.Category.ResponseDTO;
import com.example.dto.Detail.RequestHashDto;
import com.example.dto.Food.ItemDto;
import com.example.repository.CategoryRepository;
import com.example.util.Convert;
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
        Category category = categoryRepository.findById(id).orElseThrow(NoSuchFieldError::new);
        return ResponseDTO.of(category);
    }

    public Category findById(Long id) {
        return categoryRepository.findById(id).orElseThrow(NoSuchFieldError::new);
    }

    public Category save(Category category) {
        return categoryRepository.save(category);
    }

    public void insertItem(Category category, List<ItemDto> itemDtoList) {
        for (ItemDto itemDto : itemDtoList) {
            category.addItem(Item.of(itemDto.getDetail_hash(),
                    itemDto.getTitle(),
                    itemDto.getDescription(),
                    Convert.StrPriceToInt(itemDto.getS_price()),
                    Convert.ArrayToString(itemDto.getBadge()),
                    Convert.ArrayToString(itemDto.getDelivery_type()),
                    "",
                    10,
                    ""
            ));
        }
        save(category);
    }

    public void insertDetailOfItem(List<RequestHashDto> requestList, Category category) {
        for (RequestHashDto dto : requestList) {
            Item findItem = category.getItems().get(dto.hash);

            if (findItem == null) {
                continue;
            }

            if (findItem.getId().equals(dto.hash)) {
                category.update(Item.of(dto.hash,
                        findItem.getTitle(),
                        findItem.getDescription(),
                        findItem.getPrice(),
                        findItem.getBadges(),
                        findItem.getDeliveryTypes(),
                        Convert.ArrayToString(dto.data.thumb_images),
                        findItem.getStock(),
                        Convert.ArrayToString(dto.data.getDetail_section())
                ));
            }
        }

        save(category);
    }
}
