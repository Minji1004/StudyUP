package com.sp.community.queboard;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller("queboard.QueController")
public class QueController {
	
	@RequestMapping("/community/queboard/list")
	public String list() throws Exception {
		// AJAX-Text
		return "community/queboard/list";
	}
}
