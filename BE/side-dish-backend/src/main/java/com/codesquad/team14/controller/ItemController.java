package com.codesquad.team14.controller;

import com.codesquad.team14.domain.Item;
import com.codesquad.team14.repository.ItemRepository;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import java.util.ArrayList;
import java.util.List;

@RestController
public class ItemController {

    private final ItemRepository itemRepository;


    public ItemController(ItemRepository itemRepository) {
        this.itemRepository = itemRepository;
    }

    @GetMapping("/main")
    public List<Item> allFromMain() {
        return itemRepository.findByCategory("MAIN");
        //@ Todo : 서비스로 바꿔주세여 ㅠㅜ
    }

    @GetMapping("/main/{itemId}")
    public Item singleItem(@PathVariable Long itemId) {
        return itemRepository.findById(itemId).get();
        //@ Todo : 옵셔널 커스텀 익셉션으로 널처리 해주세요 ㅠㅠ
    }

    @GetMapping("/soup")
    public List<Item> allFromSoup() {
        return itemRepository.findByCategory("SOUP");
    }


    @GetMapping("/soup/{itemId}")
    public Item singleSoup(@PathVariable Long itemId) {
        return itemRepository.findById(itemId).get();
    }

    // @Todo : side 관련 아이템리스트, 아이템 정보 출력 완성해주세요 ㅠㅠ
    //
    @GetMapping("/side")
    public List<Item> allFromSide() {
        return new ArrayList<>();
    }

    @GetMapping("/side/{itemId}")
    public Item singleSide(@PathVariable Long itemId) {
        return new Item("1","1",1,1,"1");
    }
    // @ todo : 요고들도 다 서비스로 바꿔주세여
}
