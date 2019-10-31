package com.practice.payment_management;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.practice.model.Payment_ManagementVO;

@Service("payment_management_Service")
public class Payment_Management_Service {
	
	@Resource(name = "payment_management_Dao")
	private Payment_Management_Dao sDao;
	
	public List<Payment_ManagementVO> sleectAllPaymaent() {
		
		List<Payment_ManagementVO> list = sDao.sleectAllPaymaent();
		
		return list;
	}
	
	
}
