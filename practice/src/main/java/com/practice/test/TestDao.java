package com.practice.test;


import java.util.List;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

/**
 * @author sanghoyun
 *
 */
@Repository("testDao")
public class TestDao {
	
	@Resource(name="sqlSessionTemplate")
    private SqlSessionTemplate sqlSessionTemplate;
	
	public List<TestVO> selectList()
	{
		List<TestVO> list = sqlSessionTemplate.selectList("test.select");
		
		return list;
	}
	
	
	public List<TestVO> selecttest2()
	{

		List<TestVO> list = sqlSessionTemplate.selectList("test.select2");
		
		return list;
	}
	
	
}
