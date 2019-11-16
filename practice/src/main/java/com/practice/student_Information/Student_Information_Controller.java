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
	
	
	@RequestMapping("/studenchange")
	public String studentChange(@RequestParam("name")String name
								,@RequestParam("mobile")String mobile
								,@RequestParam("mobile2")String mobile2
								,@RequestParam("add")String add) {
		
		aa.studentChange(name);
		aa.studentChange(mobile);
		aa.studentChange(mobile2);
		aa.studentChange(add);
		
		return "";
	
	}


}