package com.practice.community_place;

import java.util.List;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.practice.model.CommunityplaceVO;

@Repository("community_Place_Dao")
public class Community_Place_Dao {
	
	@Resource(name="sqlSessionTemplate")
    private SqlSessionTemplate sqlSessionTemplate;
	
	public List<CommunityplaceVO> selectComm(){
		
		List<CommunityplaceVO> list = sqlSessionTemplate.selectList("communtiyplace.selectComm");
		
		return list;
	}

}
