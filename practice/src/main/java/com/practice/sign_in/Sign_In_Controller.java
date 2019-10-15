package com.practice.sign_in;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("sginin")
@Controller
public class Sign_In_Controller {

	@RequestMapping("/sginPage")
	public String signin() {
		
		return "sgininPage";
	}
	
	
}
