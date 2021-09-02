package com.invi.service;

import com.invi.domain.MemberVO;

public interface MemberService {
	// 회원 가입 정보 등록
	public void sign(MemberVO member);
	
	// 로그인
	public MemberVO login(MemberVO member);
}
