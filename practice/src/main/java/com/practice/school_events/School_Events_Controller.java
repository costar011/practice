package com.practice.school_events;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.practice.model.SchoolEventVO;

@RequestMapping("events")
@Controller
public class School_Events_Controller {
	
	@Resource(name = "school_events_Service")
	School_Events_Service ssService;

	@RequestMapping("/schoolPage")
	public String schoolevents(Model model) {
		
		System.out.println("111111111");
		
		List<SchoolEventVO> list = ssService.sleectAllevent();
		
		model.addAttribute("eventList", list);
		
		return "schooleventsPage";
	}
}
