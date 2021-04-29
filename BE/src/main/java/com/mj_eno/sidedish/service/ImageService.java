package com.mj_eno.sidedish.service;

import com.mj_eno.sidedish.domain.Image.Image;
import com.mj_eno.sidedish.domain.Image.ImageRepository;
import com.mj_eno.sidedish.domain.detailImage.DetailImage;
import com.mj_eno.sidedish.domain.detailImage.DetailImageRepository;
import com.mj_eno.sidedish.domain.dish.Dish;
import com.mj_eno.sidedish.exception.EntityNotFoundException;
import com.mj_eno.sidedish.exception.ErrorMessage;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

@Service
public class ImageService {

    public final ImageRepository imageRepository;
    public final DetailImageRepository detailImageRepository;

    public ImageService(ImageRepository imageRepository, DetailImageRepository detailImageRepository) {
        this.imageRepository = imageRepository;
        this.detailImageRepository = detailImageRepository;
    }

    public String getTopImageUrlByDish(Dish dish) {
        return imageRepository.findByDishIdAndTopTrue(dish.getId()).orElseThrow(
                () -> new EntityNotFoundException(ErrorMessage.ENTITY_NOT_FOUND)
        ).getUrl();
    }

    public List<String> findAllImageUrlByDish(Dish dish) {
        return imageRepository.findAllByDishId(dish.getId()).stream()
                .map(Image::getUrl)
                .collect(Collectors.toList());
    }

    public List<String> getAllDetailImageUrlByDish(Dish dish) {
        return detailImageRepository.findAllByDishId(dish.getId()).stream()
                .map(DetailImage::getUrl)
                .collect(Collectors.toList());
    }

}
