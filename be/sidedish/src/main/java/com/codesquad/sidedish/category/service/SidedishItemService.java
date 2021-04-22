package com.codesquad.sidedish.category.service;

import com.codesquad.sidedish.category.domain.SidedishCategory;
import com.codesquad.sidedish.category.domain.SidedishCategoryRepository;
import com.codesquad.sidedish.category.domain.SidedishItem;
import com.codesquad.sidedish.category.domain.SidedishItemDetailDTO;
import com.codesquad.sidedish.category.domain.dto.DetailItemDTO;
import com.codesquad.sidedish.category.domain.dto.PreviewListDTO;
import com.codesquad.sidedish.category.domain.dto.SidedishItemPreviewDTO;
import com.codesquad.sidedish.category.exception.EmptyItemException;
import com.codesquad.sidedish.event.domain.SidedishEvent;
import com.codesquad.sidedish.event.domain.SidedishEventDTO;
import com.codesquad.sidedish.event.domain.SidedishEventItem;
import com.codesquad.sidedish.event.domain.SidedishEventRepository;
import com.codesquad.sidedish.image.domain.SidedishImage;
import com.codesquad.sidedish.image.domain.SidedishImageRepository;
import com.codesquad.sidedish.image.domain.SidedishImageTypeEnum;
import com.codesquad.sidedish.image.domain.SidedishItemImage;
import com.codesquad.sidedish.image.exception.ImageNotFoundException;
import org.springframework.stereotype.Service;

import java.util.*;
import java.util.stream.Collectors;

@Service
public class SidedishItemService {

    private final SidedishCategoryRepository sidedishCategoryRepository;
    private final SidedishEventRepository sidedishEventRepository;
    private final SidedishImageRepository sidedishImageRepository;

    public SidedishItemService(SidedishCategoryRepository sidedishCategoryRepository, SidedishEventRepository sidedishEventRepository, SidedishImageRepository sidedishImageRepository) {
        this.sidedishCategoryRepository = sidedishCategoryRepository;
        this.sidedishEventRepository = sidedishEventRepository;
        this.sidedishImageRepository = sidedishImageRepository;
    }

    public PreviewListDTO showItemList(String categoryName) {
        SidedishCategory category = sidedishCategoryRepository.findByCategoryName(categoryName);
        List<SidedishItem> items = category.getSidedishItemList();

        List<SidedishItemPreviewDTO> itemDTOs = new ArrayList<>();
        Map<Long, SidedishEvent> eventMap = new HashMap<>();

        for (SidedishItem item : items) {
            Set<SidedishEventDTO> eventSet = createEventDtoSet(item, eventMap);
            SidedishImage thumbnailImage = findThumbnailImage(item);
            itemDTOs.add(new SidedishItemPreviewDTO(item, eventSet, thumbnailImage));
        }
        return new PreviewListDTO(itemDTOs);
    }

    public DetailItemDTO showItem(String categoryName, Long itemId) {
        SidedishCategory sidedishCategory = sidedishCategoryRepository.findByCategoryName(categoryName);
        SidedishItem sidedishItem = sidedishCategory.getSidedishItemList().stream()
                .filter(item -> item.isSameId(itemId))
                .findFirst()
                .orElseThrow(EmptyItemException::new);

        Set<SidedishEventDTO> eventSet = createEventDtoSet(sidedishItem);
        List<SidedishImage> detailImages = findImagesByType(sidedishItem, SidedishImageTypeEnum.DETAIL);
        List<SidedishImage> descriptionImages = findImagesByType(sidedishItem, SidedishImageTypeEnum.DESCRIPTION);
        SidedishItemDetailDTO sidedishItemDetailDTO = new SidedishItemDetailDTO(sidedishItem, eventSet, detailImages, descriptionImages);
        return new DetailItemDTO(sidedishItemDetailDTO);
    }

    private SidedishImage findThumbnailImage(SidedishItem item) {
        SidedishItemImage sidedishItemImage = item.getSidedishItemImages().stream()
                .filter(SidedishItemImage::isThumbnailImage)
                .findFirst()
                .orElseThrow(ImageNotFoundException::new);
        return sidedishImageRepository.findById(sidedishItemImage.getSidedishImage())
                .orElseThrow(ImageNotFoundException::new);
    }

    private List<SidedishImage> findImagesByType(SidedishItem item, SidedishImageTypeEnum imageTypeEnum) {
        List<Long> itemImageList = item.getSidedishItemImages().stream()
                .filter(image -> image.isSameType(imageTypeEnum))
                .map(SidedishItemImage::getSidedishImage)
                .collect(Collectors.toList());
        return sidedishImageRepository.findAllById(itemImageList);
    }

    private Set<SidedishEventDTO> createEventDtoSet(SidedishItem item, Map<Long, SidedishEvent> eventMap) {
        for (SidedishEventItem eventItem : item.getEventItems()) {
            Long eventId = eventItem.getSidedishEvent();
            if (!eventMap.containsKey(eventId)) {
                eventMap.put(eventId, sidedishEventRepository.findById(eventId).orElseThrow(EmptyItemException::new));
            }
        }
        return item.getEventItems().stream()
                .map(eventItem -> eventMap.get(eventItem.getSidedishEvent()))
                .map(SidedishEventDTO::new)
                .collect(Collectors.toSet());
    }

    private Set<SidedishEventDTO> createEventDtoSet(SidedishItem item) {
        Set<SidedishEventDTO> eventDtoSet = new HashSet<>();
        for (SidedishEventItem eventItem : item.getEventItems()) {
            Long eventId = eventItem.getSidedishEvent();
            SidedishEvent sidedishEvent = sidedishEventRepository.findById(eventId).orElseThrow(EmptyItemException::new);
            eventDtoSet.add(new SidedishEventDTO(sidedishEvent));
        }
        return eventDtoSet;
    }

}
