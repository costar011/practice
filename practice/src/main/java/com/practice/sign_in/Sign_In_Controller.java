package com.practice.sign_in;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.practice.model.MemberVO;
import com.practice.sign_up.Sign_up_Service;

@RequestMapping("signin")
@Controller
public class Sign_In_Controller {

	@Resource(name = "sign_in_Service")
	private Sign_in_Service sService;

	@RequestMapping("/signinPage")
	public String signPage() {
		
		return "signinPage";
	}
	

	@RequestMapping("/loginUser")
	public String LoginUser(  @RequestParam("inputId")String id
							 ,@RequestParam("inputPassword")String password
							 ,HttpSession session) {
		
		
		MemberVO vo = new MemberVO();
		vo.setId(id);
		vo.setPassword(password);
		
		List<MemberVO> list = sService.signIn_serivce(vo);
		
		if(list.size() > 0 ) { 
			session.setAttribute("login_id", list.get(0).getId());
			session.setAttribute("login_password", list.get(0).getName());
			session.setAttribute("login_name", list.get(0).getEmail());
			session.setAttribute("login_hp", list.get(0).getEmail());
			session.setAttribute("login_zip_code", list.get(0).getEmail());
			session.setAttribute("login_address", list.get(0).getEmail());
			session.setAttribute("login_address2", list.get(0).getEmail());
			session.setAttribute("login_email", list.get(0).getEmail());
			session.setAttribute("login_moblie", list.get(0).getEmail());
			session.setAttribute("login_sex", list.get(0).getEmail());
			
		} else {
			// login Failed
			System.out.println("login X");
			System.out.println("login X");
			System.out.println("login X");
		}
		
		return "main";
	
		
	}
	
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
		
		
		
		return "mainPage";
		
	}
	
	
}