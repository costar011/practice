package com.practice.cafeteria_information;

import java.util.List;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.practice.model.CafeteriaVO;
import com.practice.model.TeacherVO;

@Repository("cafeteria_information_Dao")
public class Cafeteria_information_Dao {

	@Resource(name = "sqlSessionTemplate")
	private SqlSessionTemplate sqlSessionTemplate;

	public List<CafeteriaVO> selectCafeteria() {

		List<CafeteriaVO> list = sqlSessionTemplate.selectList("cafeteria.cafeteriaAllList");

		return list;
	}

}
