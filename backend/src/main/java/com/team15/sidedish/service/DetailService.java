package com.team15.sidedish.service;

import com.team15.sidedish.domain.*;
import com.team15.sidedish.dto.DataDTO;
import com.team15.sidedish.dto.DetailDTO;
import com.team15.sidedish.dto.DishDAO;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class DetailService {

    private final DishRepository dishRepository;
    private final ImageRepository imageRepository;
    private final DeliveryRepository deliveryRepository;

    public DetailService(DishRepository dishRepository, ImageRepository imageRepository, DeliveryRepository deliveryRepository) {
        this.dishRepository = dishRepository;
        this.imageRepository = imageRepository;
        this.deliveryRepository = deliveryRepository;
    }

    public DetailDTO showDetailInfo(String hash) {
        DishDAO dishDAO = dishRepository.findById(hash).orElseThrow(IllegalArgumentException::new);
        List<Image> thumbImages = imageRepository.findAllByDishHashAndIsThumbTrue(hash);
        List<Image> detailImages = imageRepository.findAllByDishHashAndIsThumbFalse(hash);
        Delivery delivery = deliveryRepository.findByDishHash(hash).orElseThrow(IllegalArgumentException::new);
        DataDTO dataDTO = DataDTO.of(dishDAO, delivery, thumbImages, detailImages);
        return new DetailDTO(hash, dataDTO);

    }
}
