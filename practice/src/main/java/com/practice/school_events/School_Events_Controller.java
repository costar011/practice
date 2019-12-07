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

	// database
	@RequestMapping("/schoolPage")
	public String schoolevents(Model model) {
		
		
		List<SchoolEventVO> list = ss.sleectAllevent();
		
		model.addAttribute("eventList", list);
		
		return "schooleventsPage";
	}
	
	// Insert
	@RequestMapping("/eventInsert")
	public String schoolevents() {
	
		return "eventInsert";
		
	}
	
	// eventInsertAction
	@RequestMapping("/eventInsertAction")
	public String eventInsertAction(@RequestParam("title")String title,
									@RequestParam("writtin")String writtin) {
		
		System.out.println(title);
		System.out.println(writtin);
		
		SchoolEventVO vo =  new SchoolEventVO();
		vo.setTitle(title);
		vo.setWrittin(writtin);
		
		ss.eventInsertAction(vo);
		
		return "redirect:schoolPage";
		
	}
	
	// delete
	@RequestMapping("/deleteschoolevents")
	public String schooldelete(@RequestParam("uid")String uid) {
		
		System.out.println(uid);
		System.out.println(uid);
		System.out.println(uid);
		System.out.println(uid);
		
		
		ss.schooleventDelete(uid);
		
		return "redirect:schoolPage";
		
	}
	
	// update
	@RequestMapping("/schooleventupdate")
	
	public String schooleventupdate(@RequestParam("uid") String uid
									,@RequestParam("title")String title
									,@RequestParam("writtin")String writtin) {
		
		SchoolEventVO vo = new SchoolEventVO();
		
		System.out.println(uid);
		System.out.println(uid);
		System.out.println(uid);
		System.out.println(uid);
		System.out.println(title);
		System.out.println(title);
		System.out.println(title);
		System.out.println(title);
		System.out.println(title);
		System.out.println(title);
		System.out.println(title);
		System.out.println(title);
		
		vo.setUid(uid);
		vo.setTitle(title);
		vo.setWrittin(writtin);
		
		ss.schooleventUpdate(vo);
		
		return "redirect:schoolPage";
	}
	
	
	
	}
















