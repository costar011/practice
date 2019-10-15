package com.practice.school_document;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("school")
@Controller
public class School_Document_Controller {

	@RequestMapping("/schoolPage")
	public String schoolPage() {
		
		return "schooldocumentPage";
	}
}
