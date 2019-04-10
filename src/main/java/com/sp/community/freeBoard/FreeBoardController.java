package com.sp.community.freeBoard;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller("freeBoard.freeBoardController")
public class FreeBoardController {
	
	@RequestMapping("/community/freeBoard/list")
	public String list() throws Exception {
		// AJAX-Text
		return "community/freeBoard/list";
		
		
	}
}
