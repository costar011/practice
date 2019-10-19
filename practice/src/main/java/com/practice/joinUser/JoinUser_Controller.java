package com.practice.joinUser;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@RequestMapping("signup")
@Controller
public class JoinUser_Controller {

	@RequestMapping("/joinPage")
	public String joinPage() {
		
		return "joinuaer";
		
	}
	
}
