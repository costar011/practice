package com.practice.other_staff;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.practice.model.OtherStaffVO;

@Service("Other_Staff_Service")
public class Other_Staff_Service {
	
	@Resource(name = "Other_Staff_Dao")
	private Other_Staff_Dao sDao;
	
	
	public List<OtherStaffVO> selecList() {
		
		List<OtherStaffVO> list = sDao.selectOther();
		
		return list;
	}

}
