package com.codesquad.sidedish.category.service;

import com.codesquad.sidedish.category.domain.SidedishCategoryRepository;
import com.codesquad.sidedish.category.domain.SidedishCategory;
import com.codesquad.sidedish.category.domain.SidedishItem;
import com.codesquad.sidedish.category.domain.SidedishItemPreviewDTO;
import com.codesquad.sidedish.category.exception.EmptyItemException;
import com.codesquad.sidedish.event.domain.SidedishEvent;
import com.codesquad.sidedish.event.domain.SidedishEventDTO;
import com.codesquad.sidedish.event.domain.SidedishEventItem;
import com.codesquad.sidedish.event.domain.SidedishEventRepository;
import com.codesquad.sidedish.image.domain.SidedishImage;
import com.codesquad.sidedish.image.domain.SidedishImageRepository;
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

    public List<SidedishItemPreviewDTO> showItemList(String categoryName){

        SidedishCategory category = sidedishCategoryRepository.findByCategoryName(categoryName);
        List<SidedishItem> items = category.getSidedishItemList();

        List<SidedishItemPreviewDTO> itemDTOs = new ArrayList<>();
        Map<Long, SidedishEvent> events = new HashMap<>();

        for(SidedishItem item : items){
            for(SidedishEventItem eventItem : item.getEventItems()){
                Long eventId = eventItem.getSidedishEvent();
                if(!events.containsKey(eventId)){
                    events.put(eventId,sidedishEventRepository.findById(eventId).orElseThrow(EmptyItemException::new));
                }
            }

            Set<SidedishEventDTO> eventSet = item.getEventItems().stream()
                    .map(eventItem -> events.get(eventItem.getSidedishEvent()))
                    .map(SidedishEventDTO::new)
                    .collect(Collectors.toSet());
            SidedishItemImage thumbnailItemImage = item.getSidedishItemImages().stream().filter(SidedishItemImage::isThumbnailImage).findFirst().orElseThrow(ImageNotFoundException::new);
            SidedishImage thumbnailImage = sidedishImageRepository.findById(thumbnailItemImage.getSidedishImage()).orElseThrow(ImageNotFoundException::new);
            itemDTOs.add(new SidedishItemPreviewDTO(item, eventSet, thumbnailImage));
        }
        return itemDTOs;
    }


}
