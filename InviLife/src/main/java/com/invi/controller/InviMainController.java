package com.invi.controller;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.invi.domain.MemberVO;
import com.invi.service.MemberService;

@Controller
@RequestMapping("invi")
public class InviMainController {
	private static final Logger logger = LoggerFactory.getLogger(InviMainController.class);

	@Autowired
	private MemberService mService;
	
	// 메인 화면(main)
	@GetMapping("main")
	public void main() {
		logger.info("main");

	}
	
	// 회원가입 화면(membership)
	@GetMapping("membership")
	public void membership() {
		logger.info("membership");
	}
	
	// 회원가입 후 로그인 페이지로 이동
	@PostMapping("membership")
	public String membershipPost(MemberVO member) {
		logger.info("membershipPost");
		mService.sign(member);
		return "redirect:/invi/login";
	}
	
	
	// 로그인 화면(login)
	@GetMapping("login")
	public void login() {
		logger.info("login");
	}
	
	// 로그인 Post
	@PostMapping("login")
	public String loginPost(MemberVO member, HttpSession session, RedirectAttributes rttr) {
		logger.info("로그인 서비스 처리");
		
		MemberVO vo = mService.login(member);
		// Member VO에 있는 MemberVO에 들어있는 정보를 세션 영역에 aaaa라는 변수에 저장
		session.setAttribute("login", vo);
		
		// session영역에 aaaa라는 변수에 값이 있으면 로그인 된 채로 main으로
		if(session.getAttribute("login") != null) {
			return "redirect:/invi/main";
		} else {
			rttr.addFlashAttribute("msg", false);
			return "redirect:/invi/login";
		}
	}
	
	@GetMapping("logout")
	public String logoutPost(HttpSession session) {
		logger.info("로그아웃 처리");
		session.invalidate();
		return "redirect:/invi/main";
	}
	
	@GetMapping("header")
	public void header() {
		logger.info("header");
	}
}
