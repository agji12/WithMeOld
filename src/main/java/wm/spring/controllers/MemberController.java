package wm.spring.controllers;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import wm.spring.dto.MemberDTO;
import wm.spring.services.MailSendService;
import wm.spring.services.MemberService;

@Controller
@RequestMapping("/member/")
public class MemberController {
	
	@Autowired
	private HttpSession session;
	
	@Autowired
	private MemberService memberService;
	
	@Autowired
	private MailSendService mailSendService;
	
	// 로그인 창으로
	@RequestMapping("toSignIn")
	public String toSignIn(Model model) {
		//boolean signInResult = true;
		//model.addAttribute("signInResult", signInResult);
		
		return "/member/signIn";
	}
	
	// 회원가입 창으로
	@RequestMapping("toSignUp")
	public String toSignUp() {
		
		return "/member/signUp";
	}
	
	// 이메일 인증
	@ResponseBody
	@RequestMapping("toMailSend")
	public String toMailSend(String email) {
		String authNumber = mailSendService.sendMail(email);
		
		return authNumber;
	}
	
	// 회원가입
	@RequestMapping("signUp")
	public String signUp(MemberDTO dto) throws Exception {
		memberService.signUp(dto);
		System.out.println("가입 성공");
		return "redirect:/";
	}
	
	// 로그인
	@RequestMapping("signIn")
	public String signIn(MemberDTO dto, RedirectAttributes redir) throws Exception {
		boolean signInResult = memberService.signIn(dto);
		
		if(signInResult) {
			session.setAttribute("email", dto.getEmail());
			return "redirect:/";			
		}else {
			redir.addFlashAttribute("signInResult", "false");
			return "redirect:/member/toSignIn";
		}
	}
	
	// 로그아웃
	@RequestMapping("signOut")
	public String signOut() {
		session.invalidate();
		return "redirect:/";
	}
	
	//예외처리
	@ExceptionHandler(Exception.class)
	public String exceptionHandler(Exception e) {
		e.printStackTrace();
		return "redirect:/error";
	}
	
}
