package com.practice.other_staff;


import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.practice.model.OtherStaffVO;


@RequestMapping("other_staff")
@Controller
public class Other_Staff_Controller {

	@Resource(name = "Other_Staff_Service")
	Other_Staff_Service aa;
	
	
	@RequestMapping("/otherstaffPage")
	public String otherstaff(Model model) {
		
		List<OtherStaffVO> list = aa.selecList();
		
		model.addAttribute("otherList", list);
		
		return "otherPage";
		
	}
	
	@RequestMapping("/deleteOther")
	public String deleteOther(@RequestParam("uid")String uid) {
		
		aa.deleteOther(uid);
		
		return "redirect:otherstaffPage";
		
	}
	
	
}
