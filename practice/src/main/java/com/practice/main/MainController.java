package com.practice.main;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("main")
@Controller
public class MainController {

	
	@RequestMapping("/mainPage")
	public String mainPage() {
		
		return "main";
				
	}
	
}
