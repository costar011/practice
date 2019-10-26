package com.practice.admlnlstratlon_staff;

import java.util.List;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.practice.model.AdministrationVO;

@Repository("admlnlstratlon_staff_Dao")
public class Administration_Staff_Dao {
	
	@Resource(name="sqlSessionTemplate")
    private SqlSessionTemplate sqlSessionTemplate;
	
	public List<AdministrationVO> selectAllAdmin() {
		
		List<AdministrationVO> list = sqlSessionTemplate.selectList("administration.admin");
		
		return list;
	}

}
