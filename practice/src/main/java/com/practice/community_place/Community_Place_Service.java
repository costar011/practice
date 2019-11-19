package com.practice.community_place;


import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.practice.model.CommunityplaceVO;

@Service("community_Place_Service")
public class Community_Place_Service {
	
	@Resource(name ="community_Place_Dao")
	private Community_Place_Dao cDao;
	
	public List<CommunityplaceVO> selectComm(){
		
		List<CommunityplaceVO> list = cDao.selectComm();
		
		return list;
	}

	public void communityDelete(String uid) {
		
		cDao.communityDelete(uid);
	}
	
}
