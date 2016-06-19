package org.prodigius.cars;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/")
public class CarController {
	
	private CarRepository carRepository;
	
	@Autowired
	public CarController(CarRepository carRepository) {
		this.carRepository = carRepository;
	}
	
	@RequestMapping(value="/{owner}", method=RequestMethod.GET)
	public String ownersCars(@PathVariable("owner") String owner, Model model) {
		
		List<Car> carList = this.carRepository.findByOwner(owner);
		
		if (carList != null) {
			model.addAttribute("cars", carList);
		}
		
		return "carList";
	}
	
	@RequestMapping(value="/{owner}", method=RequestMethod.POST)
	public String addCar(@PathVariable("owner") String owner, Car car) {
		
		car.setOwner(owner);
		this.carRepository.save(car);
		
		return "redirect:/{owner}";
	}

}
