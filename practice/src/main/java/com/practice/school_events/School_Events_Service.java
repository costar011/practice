package com.practice.school_events;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.practice.model.SchoolEventVO;

@Service("school_events_Service")
public class School_Events_Service {

	// database
	@Resource(name = "school_events_Dao")
	private School_Events_Dao ss;

	public List<SchoolEventVO> sleectAllevent() {

		List<SchoolEventVO> list = ss.sleectAllevent();

		return list;
	}

	
	// eventInsertAction
	public void eventInsertAction(SchoolEventVO vo) {

		ss.eventInsertAction(vo);
	}
	

	// Delete
	public void schooleventDelete(String uid) {

		ss.schooleventDelete(uid);
		
	}

	// Update
	public void schooleventUpdate(SchoolEventVO vo)	{
		
		ss.schooleventUpdate(vo);
	}
	
}
