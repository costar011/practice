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

		sqlSessionTemplate.insert("event.schoolInsert", vo);
	}

	public void eventDelete(String uid) {

		sqlSessionTemplate.delete("event.schooldelet", uid);
	}

	

	public void eventChange(String uid)	{
		sqlSessionTemplate.update("event.schoolchange", uid);
	}
	
}
