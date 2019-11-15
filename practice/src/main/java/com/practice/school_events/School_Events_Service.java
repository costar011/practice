package com.practice.school_events;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.practice.model.SchoolEventVO;

@Service("school_events_Service")
public class School_Events_Service {

	@Resource(name = "school_events_Dao")
	private School_Events_Dao ssDao;

	public List<SchoolEventVO> sleectAllevent() {

		List<SchoolEventVO> list = ssDao.sleectAllevent();

		return list;
	}

	public void insertEvent(SchoolEventVO vo) {

		ssDao.EventInsert(vo);
	}

	public void eventDelet(String uid) {

		ssDao.eventDelet(uid);
	}

}
