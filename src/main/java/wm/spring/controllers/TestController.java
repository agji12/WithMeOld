package wm.spring.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import wm.spring.dto.SummonerName;
import wm.spring.services.TestService;

@Controller
@RequestMapping("/test/")
public class TestController {
	
	@Autowired
	private TestService testService;
	
	@RequestMapping("summoner")
	@ResponseBody
	public String test(String summonerName) {
		
		System.out.println("aa");
		System.out.println(summonerName);
		
		String result = testService.callAPISummonerByName(summonerName);
		return result;
		
	}
	
	
	
	
}
