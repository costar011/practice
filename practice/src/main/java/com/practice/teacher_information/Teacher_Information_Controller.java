package com.practice.teacher_information;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("teacher")
@Controller
public class Teacher_Information_Controller {
	
	@RequestMapping("/teacherPage")
	public String teacherPage() {
		
		return "teacherPage";
	}

}
