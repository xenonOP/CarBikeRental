package CarBikeRental.carrental.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class myController {
    @GetMapping("/")
    public String Index()
    {
        return "index.jsp";
    }
}
