package com.invi.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

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
	
	// 회원가입 후 로그인으로 이동
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
	
}
