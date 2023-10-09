package wm.spring.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import wm.spring.dto.MemberDTO;
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
		String authNumber = mailSendService.sendMail(email);
		
		return authNumber;
	}
	
	@RequestMapping("insertMember")
	public String insertMember(MemberDTO dto) {
		memberService.insertMember(dto);
		System.out.println("가입 성공");
		return "/";
	}
	
}
