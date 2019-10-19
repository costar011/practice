package com.practice.loginUser;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@RequestMapping("signin")
@Controller
public class LoginUser_Controller {


	@RequestMapping("/loginPage")
	public String loginpage() {
		
		return "loginuser";
	
}
}