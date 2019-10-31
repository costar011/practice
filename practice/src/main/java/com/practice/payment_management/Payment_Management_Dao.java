package com.practice.payment_management;

import java.util.List;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.practice.model.Payment_ManagementVO;

@Repository("payment_management_Dao")
public class Payment_Management_Dao {

	@Resource(name = "sqlSessionTemplate")
	 private SqlSessionTemplate sqlSessionTemplate;
	
	public List<Payment_ManagementVO> sleectAllPaymaent() {
		
		 List<Payment_ManagementVO> list = sqlSessionTemplate.selectList("payment_management.admin");
		 
		return list;
	}
	
	
}

