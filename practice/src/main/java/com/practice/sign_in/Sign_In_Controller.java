package com.practice.sign_in;

import java.util.List;

import javax.annotation.Resource;

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
							 ,@RequestParam("inputPassword")String password) {
		
		
		MemberVO vo = new MemberVO();
		vo.setId(id);
		vo.setPassword(password);
		
		List<MemberVO> list = sService.signIn_serivce(vo);
		
		if(list.size() > 0 ) {
			// login OK
			System.out.println("login");
			System.out.println("login");
			System.out.println("login");
		} else {
			// login Failed
			System.out.println("login X");
			System.out.println("login X");
			System.out.println("login X");
		}
		
		return "main";
	
		
	}

	
	


}