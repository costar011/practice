package com.practice.payment_management;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@RequestMapping("payment")
@Controller

public class payment_management_Controller {
	
	
	@RequestMapping("/paymentPage")
	public String payment() {
		
		return "paymentPage";
	}
	
}
