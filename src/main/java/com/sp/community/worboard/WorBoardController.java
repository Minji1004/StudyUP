package com.sp.community.worboard;

import java.net.URLDecoder;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.sp.common.FileManager;
import com.sp.common.MyUtil;

@Controller("worboard.worboardController")
public class WorBoardController {
	@Autowired
	private WorBoardService service;
	@Autowired
	private MyUtil myUtil;
	@Autowired
	private FileManager fileManager;
	@RequestMapping("/community/worboard/list")
	public String list(
			@RequestParam(value="pageNo", defaultValue="1") int current_page,
			@RequestParam(defaultValue="all") String condition,
			@RequestParam(defaultValue="") String keyword,
			HttpServletRequest req,
			Model model) throws Exception {
		
		int rows=20;
		int total_page=0;
		int dataCount=0;
		
		if(req.getMethod().equalsIgnoreCase("GET")) {
			keyword=URLDecoder.decode(keyword, "utf-8");
		}
		
		Map<String, Object> map=new HashMap<String, Object>();
		map.put("condition", condition);
		map.put("keyword", keyword);
		
		dataCount=service.dataCount(map);
		if(dataCount !=0)
			total_page=myUtil.pageCount(rows, dataCount);
		// AJAX-Text
		
		if(total_page<current_page)
			current_page=total_page;
		
		int start=(current_page-1)*rows+1;
		int end=current_page*rows;
		map.put("start", start);
		map.put("end", end);
		
		List<WorBoard> list=service.listWorBoard(map);
		
		Date endDate=new Date();
		long gap;
		int f_PostNum, n=0;
		for(WorBoard dto:list) {
			f_PostNum=dataCount-(start+n-1);
			dto.setF_PostNum(f_PostNum);
			
			SimpleDateFormat formatter=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			Date beginDate=formatter.parse(dto.getC_DT());
			
			gap=(endDate.getTime()-beginDate.getTime())/(60*60*1000);
			dto.setGap(gap);
			
			dto.setC_DT(dto.getC_DT().substring(0, 10));
			
			n++;
		}
		
		String paging=myUtil.paging(current_page, total_page);
		model.addAttribute("list",list);
		model.addAttribute("pageNo", current_page);
		model.addAttribute("dataCount", dataCount);
		model.addAttribute("total_page", total_page);
		model.addAttribute("paging", paging);
		
		model.addAttribute("condition", condition);
		model.addAttribute("keyword", keyword);
		return "community/worboard/list";
	}
	
	@RequestMapping(value="community/worboard/created", method=Requ)
}
