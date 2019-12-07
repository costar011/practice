package com.practice.other_staff;

import java.util.List;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.practice.model.OtherStaffVO;

@Repository("Other_Staff_Dao")
public class Other_Staff_Dao {

	@Resource(name = "sqlSessionTemplate")
	private SqlSessionTemplate sqlSessionTemplate;
	
	public List<OtherStaffVO> selectOther() {
		
		List<OtherStaffVO> list = sqlSessionTemplate.selectList("otherstaff.other");
		
		return list;
		
		
	}
	
	public void deleteOther(String uid) {
		
		sqlSessionTemplate.delete("otherstaff.deleteOther", uid);
	}
}
