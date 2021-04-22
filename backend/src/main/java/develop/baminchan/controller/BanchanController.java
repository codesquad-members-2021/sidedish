package develop.baminchan.controller;

import develop.baminchan.dto.BanchanDto;
import develop.baminchan.dto.banchan.BanchanDetailDto;
import develop.baminchan.entity.Banchan;
import develop.baminchan.service.BanchanService;
import org.springframework.web.bind.annotation.*;

@RestController
public class BanchanController {

    private BanchanService banchanService;

    public BanchanController(BanchanService banchanService) {
        this.banchanService = banchanService;
    }

    @GetMapping("/main/{detail_hash}")
    public BanchanDto findOneMain(@PathVariable String detail_hash) {
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
