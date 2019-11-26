package com.practice.teacher_information;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

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
	
	
	@RequestMapping("/insert1Page")
	public String insert1Page() {
		return "insert1Page";
	}
	
	@RequestMapping("/teacherInsert")
	public String teacherInsert(@RequestParam("name")String name,
								@RequestParam("mobile")String mobile,
								@RequestParam("sex")String sex,
								@RequestParam("job")String job,
								@RequestParam("mgr")String mgr,
								@RequestParam("address")String address,
								@RequestParam("email")String email,
								@RequestParam("sal")String sal) {
		
		TeacherVO vo = new TeacherVO();
		
		vo.setName(name);
		vo.setMobile(mobile);
		vo.setSex(sex);
		vo.setJob(job);
		vo.setMgr(mgr);
		vo.setAddress(address);
		vo.setEmail(email);
		vo.setSal(sal);
		
		sss.teacherInsert(vo);
		
		return "redirect:teacherPage";
		
	}
	
	@RequestMapping("/deleteTeacher")
	public String deleteTeacher(@RequestParam("uid")String uid) {
		
		sss.teacherDelete(uid);
		
		
		return "redirect:teacherPage";
	}

}













