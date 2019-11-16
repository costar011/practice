package com.practice.work_schedule;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("work")
@Controller
public class Work_Schedule_Controller {

	@RequestMapping("/workPage")
	public String work() {
		
		return "workPage";
	}
	
	
	
}
