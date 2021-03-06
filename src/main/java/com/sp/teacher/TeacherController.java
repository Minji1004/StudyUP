package com.sp.teacher;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.sp.member.SessionInfo;

@Controller("teacher.teacherController")
public class TeacherController {
	
	@RequestMapping(value ="/teacher/check", method=RequestMethod.GET)
	public String check(HttpSession session, Model model) {
		
		SessionInfo info = (SessionInfo)session.getAttribute("member");		
		
		List<Integer> userType = info.getUserType();
		
		if(userType==null)
			System.out.println("type은 null입니다.");
		
		model.addAttribute("mode", "teacher");
		
		for(int type: userType)	{
			if(type==3)
				return ".teacher.manage";
		}		

		return ".teacher.register";
	}

}
