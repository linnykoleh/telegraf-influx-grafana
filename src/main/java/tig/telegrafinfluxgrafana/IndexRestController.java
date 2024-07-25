package linnyk.tig;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class IndexRestController {

    @GetMapping("/index")
    public String index() {
        return "Hello, World from Tig!";
    }

}
