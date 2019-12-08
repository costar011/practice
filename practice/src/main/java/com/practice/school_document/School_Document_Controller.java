package com.practice.school_document;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.practice.model.DocumentVO;
import com.practice.student_Information.Student_Information_Service;

@RequestMapping("school")
@Controller
public class School_Document_Controller {

	@Resource(name = "school_document_Service")
	School_Document_Service aa;

	@RequestMapping("/schoolPage")
	public String schoolPage(Model model) {

		List<DocumentVO> list = aa.selectDocument();

		model.addAttribute("DocumentList", list);

		return "schooldocumentPage";
	}

	@RequestMapping("/insertPage1")
	public String insertPage() {

		return "insertPage1";

	}

	@RequestMapping("/documentInsert")
	public String documentInsert(@RequestParam("title") String title, @RequestParam("author") String author) {

		DocumentVO vo = new DocumentVO();

		System.out.println(title);
		System.out.println(author);
		System.out.println(title);
		System.out.println(author);
		System.out.println(title);
		System.out.println(author);
		System.out.println(title);
		System.out.println(author);
		System.out.println(title);
		System.out.println(author);
		System.out.println(title);
		System.out.println(author);

		vo.setTitle(title);
		vo.setWrittin(author);

		aa.inserDocument(vo);

		System.out.println(vo);

		return "redirect:schoolPage";
	}

	@RequestMapping("/documentDelete")
	public String documentDelete(@RequestParam("uid") String uid) {

		aa.deleteDocument(uid);

		System.out.println(uid);
		System.out.println(uid);
		System.out.println(uid);
		System.out.println(uid);
		System.out.println(uid);
		System.out.println(uid);
		System.out.println(uid);
		System.out.println(uid);

		return "redirect:schoolPage";

	}

}
