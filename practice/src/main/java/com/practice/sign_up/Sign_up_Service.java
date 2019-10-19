package com.practice.sign_up;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.practice.model.MemberVO;

@Service("sign_up_Service")
public class Sign_up_Service {
	
	@Resource(name = "sign_up_Dao")
	private Sign_up_Dao sDao;
	
	public void signUp_serivce(MemberVO vo)
	{
		sDao.signUp(vo);
	}
	
}
