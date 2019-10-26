package com.practice.admlnlstratlon_staff;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.practice.model.AdministrationVO;

@RequestMapping("administration_staff")
@Controller
public class Administration_Staff_Controller {
	
	@Resource(name = "administration_staff_Service")
	Administration_Staff_Service aService;
	
	
	@RequestMapping("/administrationPage")
	public String admlnlstratlon(Model model) {
		
		List<AdministrationVO> list = aService.selectAllAdmin();
		
		model.addAttribute("adminList", list);
		
		return "AdminPage";
				
		
		
	}

}
