package com.practice.student_Information;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("student")
@Controller
public class Student_Information_Controller {
	
	@RequestMapping("/sudentPage")
	public String studentPage() {
		
		return "studentPage";
	}

}
