package com.practice.sign_in;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.practice.model.MemberVO;
import com.practice.sign_in.Sign_in_Dao;

@Service("sign_in_Service")
public class Sign_in_Service {


	@Resource(name = "sign_in_Dao")
	private Sign_in_Dao sDao;
	
	public List<MemberVO> signIn_serivce(MemberVO vo)
	{
		List<MemberVO> list = sDao.signIn(vo);
		
		return list;
	}
	
}
