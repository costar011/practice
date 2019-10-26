package com.practice.other_staff;


import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.practice.model.OtherStaffVO;


@RequestMapping("other_staff")
@Controller
public class Other_Staff_Controller {

	@Resource(name = "Other_Staff_Service")
	Other_Staff_Service sService;
	
	
	@RequestMapping("/otherstaffPage")
	public String otherstaff(Model model) {
		
		List<OtherStaffVO> list = sService.selecList();
		
		model.addAttribute("otherList", list);
		
		return "otherPage";
		
	}
	
	
}
