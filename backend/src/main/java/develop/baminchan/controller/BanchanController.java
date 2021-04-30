package develop.baminchan.controller;

import develop.baminchan.dto.BanchanDto;
import develop.baminchan.dto.CategoryDto;
import develop.baminchan.dto.banchan.BanchanDetailDto;
import develop.baminchan.entity.Banchan;
import develop.baminchan.service.BanchanService;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api")
public class BanchanController {

    private BanchanService banchanService;

    public BanchanController(BanchanService banchanService) {
        this.banchanService = banchanService;
    }

    @GetMapping("/main")
    public ResponseEntity<Message> findMain() {
        List<BanchanDto> banchanDtoList = banchanService.findBanchansByTag("main");
        Message message = new Message(Message.OK, banchanDtoList);
        return new ResponseEntity(message, HttpStatus.OK);
    }

    @GetMapping("/soup")
    public ResponseEntity<Message> findSoup() {
        List<BanchanDto> banchanDtoList = banchanService.findBanchansByTag("soup");
        Message message = new Message(Message.OK, banchanDtoList);
        return new ResponseEntity(message, HttpStatus.OK);
    }

    @GetMapping("/side")
    public ResponseEntity<Message> findSide() {
        List<BanchanDto> banchanDtoList = banchanService.findBanchansByTag("side");
        Message message = new Message(Message.OK, banchanDtoList);
        return new ResponseEntity(message, HttpStatus.OK);
    }
    @GetMapping("/main/{detail_hash}")
    public BanchanDto findOneMain(@PathVariable String detail_hash) {
        BanchanDto banchanDto = banchanService.findBanchanByDetailHash(detail_hash);
        return banchanDto;
    }

    @GetMapping("/soup/{detail_hash}")
    public BanchanDto findOneSoup(@PathVariable String detail_hash) {
        BanchanDto banchanDto = banchanService.findBanchanByDetailHash(detail_hash);
        return banchanDto;
    }

    @GetMapping("/side/{detail_hash}")
    public BanchanDto findOneSide(@PathVariable String detail_hash) {
        BanchanDto banchanDto = banchanService.findBanchanByDetailHash(detail_hash);
        return banchanDto;
    }


    @GetMapping("/detail/{detail_hash}")
    public BanchanDetailDto findOneDetail(@PathVariable String detail_hash) {
        BanchanDetailDto banchanDetailDto = banchanService.findBanchanDetailByDetailHash(detail_hash);
        System.out.println(banchanDetailDto);
        return banchanDetailDto;
    }

    @PostMapping("/create")
    public String create(@RequestBody Banchan banchan) {
        banchanService.createBanchan(banchan);
        return "success";
    }
}
