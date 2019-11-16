package com.practice.student_Information;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.practice.model.StudentVO;

@RequestMapping("studentt")
@Controller
public class Student_Information_Controller {
	
	@Resource(name = "student_information_Service")
	Student_Information_Service aa;
	
	@RequestMapping("/studentPage")
	public String studentPage(Model model) {
		
		List<StudentVO> list = aa.selectStudent();
		
		model.addAttribute("studentList", list);
		
		return "studentPage";
	}
	
	@RequestMapping("/insertPage")
	public String insertPage() {
		
	
		
		return "insertPage";
		
		
	} 
	
	
	@RequestMapping("/studentInsert")
	public String studentInsert(@RequestParam("name")String name
								,@RequestParam("mobile")String mobile
								,@RequestParam("mobile2")String mobile2
								,@RequestParam("add")String add) {
		
		StudentVO vo = new StudentVO();
		
		vo.setName(name);
		vo.setMoblile(mobile);
		vo.setMoblile2(mobile2);
		vo.setAddress(add);
		
		aa.studentInsert(vo);
		
		return "redirect:studentPage";
		
	} 
	
	
	@RequestMapping("/deleteStudent")
	public String deleteStudent(@RequestParam("uid")String uid) {
		
		aa.studentDelete(uid);
		
		return "redirect:studentPage";
	}
	
	
	@RequestMapping("/studenupdate")
	public String studentUpdate(@RequestParam("uid")String uid
								,@RequestParam("name")String name
								,@RequestParam("moblile")String moblile
								,@RequestParam("moblile2")String moblile2
								,@RequestParam("address")String address) {
		
		StudentVO vo = new StudentVO();
		
		vo.setUid(uid);
		vo.setName(name);
		vo.setMoblile(moblile);
		vo.setMoblile2(moblile2);
		vo.setAddress(address);
		
		
		aa.studentUpdate(vo);
		
		return "redirect:studentPage";
	
	}


}