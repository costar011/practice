package com.practice.sign_up;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.practice.model.MemberVO;

@Repository("sign_up_Dao")
public class Sign_up_Dao {
	
	@Resource(name="sqlSessionTemplate")
    private SqlSessionTemplate sqlSessionTemplate;

	public void signUp(MemberVO vo) {
											// MYBATIS
		int result = sqlSessionTemplate.insert("member.signup", vo);
		
	}
	
}
