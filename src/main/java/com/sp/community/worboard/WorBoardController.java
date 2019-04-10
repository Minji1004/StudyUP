package com.sp.community.worboard;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller("worboard.WorboardController")
public class WorBoardController {
	
	@RequestMapping("/community/worboard/list")
	public String list() throws Exception {
		// AJAX-Text
		return "community/worboard/list";
	}
}
