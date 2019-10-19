package com.practice.student_activities;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("student")
@Controller
public class Student_Activities_Controller {

	@RequestMapping("/studentPage")
	public String student() {
		
		return "studentactivitiesPage";
	}
}
