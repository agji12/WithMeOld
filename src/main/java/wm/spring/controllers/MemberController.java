package wm.spring.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import wm.spring.services.MailSendService;
import wm.spring.services.MemberService;

@Controller
@RequestMapping("/member/")
public class MemberController {
	
	@Autowired
	private MemberService memberService;
	
	@Autowired
	private MailSendService mailSendService;
	
	@RequestMapping("toLogin")
	public String toLogin() {
		
		return "/member/login";
	}
	
	@RequestMapping("toJoinMember")
	public String toJoinMember() {
		
		return "/member/joinMember";
	}
	
	@ResponseBody
	@RequestMapping("toMailSend")
	public String toMailSend(String email) {
		System.out.println(email);
		String authNumber = mailSendService.sendMail(email);
		
		return authNumber;
	}
	
}
