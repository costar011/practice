package com.practice.school_events;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.practice.model.SchoolEventVO;

@RequestMapping("events")
@Controller
public class School_Events_Controller {
	
	@Resource(name = "school_events_Service")
	School_Events_Service ss;

	@RequestMapping("/schoolPage")
	public String schoolevents(Model model) {
		
		System.out.println("111111111");
		
		List<SchoolEventVO> list = ss.sleectAllevent();
		
		model.addAttribute("eventList", list);
		
		return "schooleventsPage";
	}
	
	
	@RequestMapping("/eventInsert")
	public String schoolevents(@RequestParam("title")String title
							   ,@RequestParam("written")String written) {
		
		SchoolEventVO vo = new SchoolEventVO();
		
		vo.setTitle(title);
		vo.setWrittin(written);
		
		ss.sleectAllevent();
		
		return "schooleventsPage";
		
	}
	
	
}
