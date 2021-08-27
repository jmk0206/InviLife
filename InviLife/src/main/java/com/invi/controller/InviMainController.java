package com.invi.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("invi")
public class InviMainController {
	private static final Logger logger = LoggerFactory.getLogger(InviMainController.class);
	
	// 메인 화면(main)
	@GetMapping("main")
	public void main() {
		logger.info("main");
	}
	
	// 로그인 화면(login)
	@GetMapping("login")
	public void login() {
		logger.info("login");
	}
	
	// 회원가입 화면(membership)
	@GetMapping("membership")
	public void membership() {
		logger.info("membership");
	}
	
	@GetMapping("footer")
	public void footer() {
		logger.info("footer");
	}
}
