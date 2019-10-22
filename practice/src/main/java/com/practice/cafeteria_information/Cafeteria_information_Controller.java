package com.practice.cafeteria_information;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.practice.model.CafeteriaVO;
import com.practice.cafeteria_information.Cafeteria_information_Service;

@RequestMapping("cafeteria")
@Controller
public class Cafeteria_information_Controller {

	@Resource(name = "cafeteria_information_Service")
	Cafeteria_information_Service cafeteriaService;
	
	@RequestMapping("/cafeteriaPage")
	public String teacherPage(Model model) {
		
		List<CafeteriaVO> list = cafeteriaService.selectCafeteria();
		
		model.addAttribute("cafeteriaList", list);
		
		return "cafeteriaPage";
	}

	
	
	
	
}
