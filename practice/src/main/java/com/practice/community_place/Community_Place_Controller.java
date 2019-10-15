package com.practice.community_place;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("community")
@Controller
public class Community_Place_Controller {

	@RequestMapping("/communityPage")
	public String community() {
		
		return "communityPage";
	}
}
