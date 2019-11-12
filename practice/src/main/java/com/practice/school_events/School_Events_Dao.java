package com.practice.school_events;

import java.util.List;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.practice.model.SchoolEventVO;

@Repository("school_events_Dao")
public class School_Events_Dao {
	
	@Resource(name = "qlSessionTemplate")
	private SqlSessionTemplate sqlSessionTemplate;
	
	

}
