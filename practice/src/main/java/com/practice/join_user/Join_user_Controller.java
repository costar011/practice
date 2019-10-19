package com.practice.join_user;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@RequestMapping("join")
@Controller
public class Join_user_Controller {

	@RequestMapping("/joinPage")
	public String joinPage() {
		
		return "joinPage";
		
	}
	
}
