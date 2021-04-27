package sidedish.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class HomeController {

    @GetMapping("/banchan-code")
    public String login() {
        return "redirect:https://github.com/login/oauth/authorize?client_id=0723ab0365a963dc62d7";
    }

    @GetMapping("/callback")
    public String getCode(@RequestParam String code) {
        return "redirect:https://github.com/login/oauth/access_token?client_id=0723ab0365a963dc62d7" +
                "&client_secret=2739ad01c2c5f84515af7f719fc9fa74921c100e&code=" + code;
    }

}
