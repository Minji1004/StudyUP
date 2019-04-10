package com.sp.community.question;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller("question.questionController")
public class QuestionController {
	
	@RequestMapping("/community/question/list")
	public String list() throws Exception {
		// AJAX-Text
		return "community/question/list";
	}
}
