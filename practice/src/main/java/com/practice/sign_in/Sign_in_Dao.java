package com.practice.sign_in;

import java.util.List;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.practice.model.MemberVO;

@Repository("sign_in_Dao")
public class Sign_in_Dao {

	@Resource(name="sqlSessionTemplate")
    private SqlSessionTemplate sqlSessionTemplate;

	public List<MemberVO> signIn(MemberVO vo) {
											
		List<MemberVO> list = sqlSessionTemplate.selectList("login.loginUser", vo);
		
		return list;
	}
	
}
