package com.practice.admlnlstratlon_staff;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.practice.model.AdministrationVO;

@Service("administration_staff_Service")
public class Administration_Staff_Service {
	
	@Resource(name = "admlnlstratlon_staff_Dao")
	private Administration_Staff_Dao aa;
	
	public List<AdministrationVO> selectAllAdmin() {
		
		List<AdministrationVO> list = aa.selectAllAdmin();
		
		return list;
	}
	
	public void deleteStaff(String uid) {
		
		aa.deleteStaff(uid);
		
	}
	

}
