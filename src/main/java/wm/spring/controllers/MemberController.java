package wm.spring.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import wm.spring.services.MemberService;

@Controller
@RequestMapping("/member/")
public class MemberController {
	
	@Autowired
	private MemberService memberService;
	
	@RequestMapping("toLogin")
	public String toLogin() {
		
		return "/member/login";
	}
	
	@RequestMapping("toJoinMember")
	public String toJoinMember() {
		
		return "/member/joinMember";
	}
	
	
}
