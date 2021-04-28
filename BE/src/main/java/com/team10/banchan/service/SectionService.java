package com.team10.banchan.service;

import com.team10.banchan.dto.ItemDetailResponse;
import com.team10.banchan.dto.ItemSummary;
import com.team10.banchan.exception.NotFoundException;
import com.team10.banchan.model.Item;
import com.team10.banchan.model.Section;
import com.team10.banchan.repository.ItemRepository;
import com.team10.banchan.repository.SectionRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.crossstore.ChangeSetPersister;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

@Service
public class SectionService {

    private final SectionRepository sectionRepository;
    private final ItemRepository itemRepository;

    public SectionService(SectionRepository sectionRepository, ItemRepository itemRepository) {
        this.sectionRepository = sectionRepository;
        this.itemRepository = itemRepository;
    }

    public List<ItemSummary> itemSummaries(String sectionName) {
        Section section = sectionRepository.findByName(sectionName).orElseThrow(() -> new NotFoundException("존재하지 않는 섹션입니다"));
        return itemRepository.findAllBySection(section.getId()).stream()
                .map(Item::itemSummary)
                .collect(Collectors.toList());
    }

    public ItemSummary itemSummary(String sectionName, Long itemId) {
        Section section = sectionRepository.findByName(sectionName).orElseThrow(() -> new NotFoundException("존재하지 않는 섹션입니다"));
        Item item = itemRepository.findByIdAndSection(itemId, section.getId()).orElseThrow(() -> new NotFoundException("존재하지 않는 아이템입니다"));
        return item.itemSummary();
    }
}
