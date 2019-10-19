package com.practice.joinuser;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@RequestMapping("signup")
@Controller
public class Joinuser_Controller {

	@RequestMapping("/joinPage")
	public String joinPage() {
		
		return "joinuaer";
		
	}
	
}
