package com.practice.student_Information;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.practice.model.StudentVO;

@Service("student_information_Service")
public class Student_Information_Service {
	
	@Resource(name = "student_information_Dao")
	private Student_Information_Dao aa;

	public List<StudentVO> selectStudent() {
		
		List<StudentVO> list = aa.selectStudent();
		
		return list;
		
	}
	
	public void studentInsert(StudentVO vo) {
		
		aa.studentInsert(vo);
	}
	
	public void studentDelete(String uid) {
		
		aa.studentDelete(uid);
	}
	
	public void studentUpdate(StudentVO vo) {
		aa.studentUpdate(vo);
	}
	
}