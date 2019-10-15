package com.practice.school_events;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("events")
@Controller
public class School_Events_Controller {

	@RequestMapping("/schoolPage")
	public String schoolevents() {

		return "schooleventsPage";
	}
}
