package com.codesquad.sidedish.image.service;

import com.codesquad.sidedish.category.domain.SidedishItem;
import com.codesquad.sidedish.image.domain.SidedishImage;
import com.codesquad.sidedish.image.domain.SidedishImageRepository;
import com.codesquad.sidedish.image.domain.SidedishImageTypeEnum;
import com.codesquad.sidedish.image.domain.SidedishItemImage;
import com.codesquad.sidedish.image.exception.ImageItemNotFoundException;
import com.codesquad.sidedish.image.exception.ImageNotFoundException;
import com.codesquad.sidedish.util.DefaultImageUtil;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ImageFinder {

    private final SidedishImageRepository sidedishImageRepository;

    public ImageFinder(SidedishImageRepository sidedishImageRepository) {
        this.sidedishImageRepository = sidedishImageRepository;
    }

    public SidedishImage findThumbnailImage(SidedishItem item) {
        try {
            //todo : 예외 처리
            SidedishItemImage sidedishItemImage = item.findThumbnailImage();
            return findImageById(sidedishItemImage.getId());
        } catch (ImageItemNotFoundException e) {
            return DefaultImageUtil.getNotFoundImage();
        }
    }

    private SidedishImage findImageById(Long id) {
        return sidedishImageRepository.findById(id).orElseThrow(ImageNotFoundException::new);
    }


    public List<SidedishImage> findImagesByType(SidedishItem item, SidedishImageTypeEnum imageTypeEnum) {
        List<Long> itemImageIds = item.findImagesIdByType(imageTypeEnum);
        return sidedishImageRepository.findAllById(itemImageIds);
    }
}
