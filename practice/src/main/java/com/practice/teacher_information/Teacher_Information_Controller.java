package com.practice.teacher_information;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.practice.model.TeacherVO;

@RequestMapping("teacher")
@Controller
public class Teacher_Information_Controller {

	@Resource(name = "teacher_Information_Service")
	Teacher_Information_Service sss;

	@RequestMapping("/teacherPage")
	public String teacherPage(Model model) {

		List<TeacherVO> list = sss.selectTeacher();

		model.addAttribute("teacherList", list);

		return "teacherPage";
	}

}
