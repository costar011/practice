package com.practice.logout;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("logout")
@Controller
public class Logout_Controller {
	
	@RequestMapping("/logoutPage")
	public String logout(HttpSession session) {
		
		session.removeAttribute("login_id");
		session.removeAttribute("login_password");
		session.removeAttribute("login_name");
		session.removeAttribute("login_hp");
		session.removeAttribute("login_zip_code");
		session.removeAttribute("login_address");
		session.removeAttribute("login_address2");
		session.removeAttribute("login_email");
		session.removeAttribute("login_moblie");
		session.removeAttribute("login_sex");
		
		
		return "main";
		
		
	}

}
