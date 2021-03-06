package web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import web.model.Car;

import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/")
public class HelloController {

	@RequestMapping(value = "hello", method = RequestMethod.GET)
	public String printWelcome(ModelMap model) {

		List<String> messages = new ArrayList<>();
		messages.add("Hello!");
		messages.add("I'm Spring MVC application");
		messages.add("5.2.0 version by sep'19 ");
		model.addAttribute("messages", messages);
		return "hello";
	}

	@RequestMapping(value = "cars", method = RequestMethod.GET)
	public String printCars(ModelMap model) {
        List<Car> messagesCar = new ArrayList<>();
        messagesCar.add(new Car(1L, "volvo", "sedan", "green"));
        messagesCar.add(new Car(2L, "vaz", "sedan", "black"));
        messagesCar.add(new Car(3L, "toyota", "hechbek", "blue"));
        messagesCar.add(new Car(4L, "moskvich", "cupe", "red"));
        model.addAttribute("messages", messagesCar);
		return "cars";
	}
	
}