package com.practice.school_events;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.practice.model.SchoolEventVO;

@Service("school_events_Service")
public class School_Events_Service {

	@Resource(name = "school_events_Dao")
	private School_Events_Dao ss;

	public List<SchoolEventVO> sleectAllevent() {

		List<SchoolEventVO> list = ss.sleectAllevent();

		return list;
	}

	public void insertEvent(SchoolEventVO vo) {

		ss.eventInsert(vo);
	}

	public void schooleventDelete(String uid) {

		ss.schooleventDelete(uid);
		
	}

	public void schooleventUpdate(SchoolEventVO vo)	{
		
		ss.schooleventUpdate(vo);
	}
	
}
