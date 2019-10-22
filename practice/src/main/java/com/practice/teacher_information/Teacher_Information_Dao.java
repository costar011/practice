package com.practice.teacher_information;

import java.util.List;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.practice.model.TeacherVO;

@Repository("teacher_Information_Dao")
public class Teacher_Information_Dao {
	
	@Resource(name="sqlSessionTemplate")
    private SqlSessionTemplate sqlSessionTemplate;

	public List<TeacherVO> selectTeacher() {
		
		List<TeacherVO> list = sqlSessionTemplate.selectList("teacher.teacherAllList");
		
		return list;
	}

}
