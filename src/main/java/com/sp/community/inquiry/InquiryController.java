package com.sp.community.inquiry;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller("inquiry.inquiryController")
public class InquiryController {
	
	@RequestMapping("/community/inquiry/list")
	public String list() throws Exception {
		// AJAX-Text
		return "community/inquiry/list";
	}
}
