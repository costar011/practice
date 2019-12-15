package com.practice.payment_management;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.practice.model.Payment_ManagementVO;

@RequestMapping("payment")
@Controller
public class payment_Management_Controller {

	@Resource(name = "payment_management_Service")
	Payment_Management_Service pService;

	@RequestMapping("/paymentPage")
	public String payment(Model model) {

		System.out.println("44444444");

		List<Payment_ManagementVO> list = pService.sleectAllPaymaent();

		model.addAttribute("pamentList", list);

		return "paymentPage";
	}

	@RequestMapping("/teachPage")
	public String teacher(Model model) {

		System.out.println("33333333");

		List<Payment_ManagementVO> list = pService.sleectAllPaymaent();

		model.addAttribute("pamentList", list);

		return "teacherPage";
	}

	@RequestMapping("/studentPage")
	public String student(Model model) {

		System.out.println("22222222222");

		List<Payment_ManagementVO> list = pService.sleectAllPaymaent();

		model.addAttribute("pamentList", list);

		return "student2Page";
	}

}
