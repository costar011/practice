package com.practice.sign_up;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.practice.model.MemberVO;

@RequestMapping("signup")
@Controller
public class Sign_up_Controller {
	
	@Resource(name = "sign_up_Service")
	private Sign_up_Service sService;

	@RequestMapping("/signupPage")
	public String signPage() {
		
		return "signupPage";
	}
	
	@RequestMapping("/joinuser")
	public String Joinuser(	@RequestParam("name")String name
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
		
		MemberVO vo = new MemberVO();
		
		/*
		NAME
		MOBLIE
		HP
		ZIP_CODE
		ADDRESS
		ADDRESS2
		SEX
		ID
		PASSWORD
		EMAIL
		*/
		if(pass.equals(pass2))
		{
			// 비밀번호 일치, 가입 진행
			vo.setName(name);
			vo.setMobile(mobile);
			vo.setHp(hp);
			vo.setZip_code(zip);
			vo.setAddress(add);
			vo.setAddress2(add2);
			vo.setSex(sex);
			vo.setId(id);
			vo.setPassword(pass);
			vo.setEmail(email);
			
			sService.signUp_serivce(vo);
			
			return "main";
		} else {
			// 비밀번호가 일치하지 않아서 가입 불가
			return "main";
		}
		
		
	}
}
