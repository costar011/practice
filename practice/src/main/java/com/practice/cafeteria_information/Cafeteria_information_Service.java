package com.practice.cafeteria_information;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.practice.model.CafeteriaVO;
import com.practice.cafeteria_information.Cafeteria_information_Dao;

@Service("cafeteria_information_Service")
public class Cafeteria_information_Service {
	
	@Resource(name = "cafeteria_information_Dao")
	private Cafeteria_information_Dao aa;
	
	public List<CafeteriaVO> selectCafeteria(){
		List<CafeteriaVO> list = aa.selectCafeteria();
		
		return list;
	}
	
	public void deleteCafe(String uid) {
		aa.deleteCafe(uid);
	}

}
