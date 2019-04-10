package com.sp.community.worry;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller("worry.worryController")
public class WorryController {
	
	@RequestMapping("/community/worry/list")
	public String list() throws Exception {
		// AJAX-Text
		return "community/worry/list";
	}
}
