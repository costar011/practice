package com.practice.school_events;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.practice.model.SchoolEventVO;

@Service("school_events_Service")
public class School_Events_Service {

	@Resource(name = "school_events_Dao")
	private School_Events_Dao ssDao;

	public List<SchoolEventVO>  sleectAllevent() {
		
		
		System.out.println("33333333");
		
		List<SchoolEventVO> list = ssDao.sleectAllevent();
		
		return list;
	}

}
