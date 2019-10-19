package com.practice.sign_up;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@RequestMapping("signup")
@Controller
public class Sign_up_Controller {

	@RequestMapping("/signupPage")
	public String signPage() {
		
		return "signupPage";
	}
	
	@RequestMapping("/joinUser")
	public void Joinuser(	@RequestParam("name")String name
							,@RequestParam("mobile")String mobile
							,@RequestParam("hp")String hp
							,@RequestParam("zip")String zip
							,@RequestParam("add")String add
							,@RequestParam("add2")String add2
							,@RequestParam("sex")String sex
							,@RequestParam("id")String id
							,@RequestParam("pass")String pass
							,@RequestParam("pass2")String pass2
							,@RequestParam("email")String email) {
		
		System.out.println(name);
		System.out.println(mobile);
		System.out.println(add2);
		System.out.println(id);
		System.out.println(pass);
		System.out.println(email);
		
	}
}
