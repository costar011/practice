package com.practice.school_document;

import java.util.List;

import javax.annotation.Resource;
import javax.print.Doc;

import org.springframework.stereotype.Service;

import com.practice.model.DocumentVO;

@Service("school_document_Service")
public class School_Document_Service {

	@Resource(name = "school_document_Dao")
	private School_Document_Dao aa;
	
	public List<DocumentVO> selectDocument() {
		
		List<DocumentVO> list = aa.selectDocument();
		
		return list;
	}
	
	public void inserDocument(DocumentVO vo) {
		aa.inserDocument(vo);
	}

}
