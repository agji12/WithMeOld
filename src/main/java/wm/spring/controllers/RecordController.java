package wm.spring.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import wm.spring.services.RecordService;

@Controller
@RequestMapping("/record/")
public class RecordController {
	
	@Autowired
	private RecordService recordService;
	
	@RequestMapping("toSearchRecord")
	public String toSearchRecord(String summonerName, Model model) {
		
		System.out.println(summonerName);
		model.addAttribute("summonerName", summonerName);
		
		return "/record/summoner";
	}
	
}
