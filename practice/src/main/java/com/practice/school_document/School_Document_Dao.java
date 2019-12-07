package com.practice.school_document;

import java.util.List;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.practice.model.DocumentVO;

@Repository("school_document_Dao")
public class School_Document_Dao {

	@Resource(name = "sqlSessionTemplate")
	private SqlSessionTemplate sqlSessionTemplate;

	public List<DocumentVO> selectDocument() {

		List<DocumentVO> list = sqlSessionTemplate.selectList("document.documentAllList");

		return list;
	}

	public void inserDocument(DocumentVO vo) {
		sqlSessionTemplate.insert("insertdocument", vo);
	}

	
	public void deleteDocument(String uid) {
		
		sqlSessionTemplate.delete("deleteDocument", uid);
		
	}
}
