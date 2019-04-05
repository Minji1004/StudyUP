package com.sp.teacher;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.sp.member.SessionInfo;

@Controller("teacher.lectureController")
public class TeacherController {
	
	@RequestMapping(value ="/teacher/check", method=RequestMethod.GET)
	public String check(HttpSession session) {
		
		SessionInfo info = (SessionInfo)session.getAttribute("member");		
		
		List<Integer> userType = info.getUserType();
		
		for(int type: userType)			
			if(type==1)
				return ".teacher.manage";

		return ".teacher.register";
	}
	
}
