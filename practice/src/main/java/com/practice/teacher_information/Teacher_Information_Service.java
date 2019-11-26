package com.practice.teacher_information;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.practice.model.TeacherVO;

@Service("teacher_Information_Service")
public class Teacher_Information_Service {

	@Resource(name = "teacher_Information_Dao")
	private Teacher_Information_Dao sss;

	public List<TeacherVO> selectTeacher() {
		List<TeacherVO> list = sss.selectTeacher();

		return list;
	}
	
	public void teacherInsert(TeacherVO vo) {
		
		sss.teacherInsert(vo);
		
	}
	
	public void teacherDelete(String uid) {
		
		sss.teacherDelete(uid);
		
	}

}
