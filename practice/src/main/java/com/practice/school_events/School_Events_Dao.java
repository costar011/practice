package com.practice.school_events;

import java.util.List;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.practice.model.SchoolEventVO;

@Repository("school_events_Dao")
public class School_Events_Dao {

	@Resource(name = "sqlSessionTemplate")
	private SqlSessionTemplate sqlSessionTemplate;

	public List<SchoolEventVO> sleectAllevent() {


		List<SchoolEventVO> list = sqlSessionTemplate.selectList("event.schoolevent");

		return list;

	}

	public void eventInsert(SchoolEventVO vo) {

		sqlSessionTemplate.insert("event.insertEve", vo);
	}

	public void schooleventDelete(String uid) {

		sqlSessionTemplate.delete("event.deleteEve", uid);
	}

	

	public void schooleventUpdate(SchoolEventVO vo)	{
		sqlSessionTemplate.update("event.updateEve", vo);
	}
	
}
