package wm.spring.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/member/")
public class MemberController {
	
	@RequestMapping("toLogin")
	public String toLogin() {
		System.out.println("aa");
		return "/member/login";
	}
	
	
	
}
