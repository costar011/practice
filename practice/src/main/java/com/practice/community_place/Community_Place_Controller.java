package com.practice.community_place;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.practice.model.CommunityplaceVO;

@RequestMapping("community")
@Controller
public class Community_Place_Controller {

	@Resource(name = "community_Place_Service")
	private Community_Place_Service cService;
	
	@RequestMapping("/communityPage")
	public String community(Model model) {
		
		List<CommunityplaceVO> list = cService.selectComm();
		
		model.addAttribute("commList", list);
		
		return "communityPage";
	}
	
	@RequestMapping("/deleteCommuntiy")
	public String deleteStudent(@RequestParam("uid")String uid) {
		
		cService.communityDelete(uid);
		
		System.out.println(uid);
		System.out.println(uid);
		System.out.println(uid);
		System.out.println(uid);
		System.out.println(uid);
		
		
		return "redirect:communityPage";
	}
	
	
}
