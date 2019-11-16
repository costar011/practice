package com.practice.student_Information;

import java.util.List;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.practice.model.StudentVO;

@Repository("student_information_Dao")
public class Student_Information_Dao {

	@Resource(name = "sqlSessionTemplate")
	private SqlSessionTemplate sqlSessionTemplate;

	public List<StudentVO> selectStudent() {

		List<StudentVO> list = sqlSessionTemplate.selectList("student.studentAllList");

		return list;

	}

	public void studentInsert(StudentVO vo) {

		sqlSessionTemplate.insert("student.insertStudent", vo);
	}
	
	public void studentDelete(String uid) {
		
		sqlSessionTemplate.delete("student.deleteStu",  uid);
		
	}
	
	public void studentUpdate(StudentVO vo) {
		
		sqlSessionTemplate.update("student.updateStu", vo);
		
	}

}