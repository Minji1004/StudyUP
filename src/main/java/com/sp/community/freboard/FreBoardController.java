package com.sp.community.freboard;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller("freBoard.FreBoardController")
public class FreBoardController {
	
	@RequestMapping("/community/freboard/list")
	public String list() throws Exception {
		// AJAX-Text
		return "community/freBoard/list";
		
		
	}
}
