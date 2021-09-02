package com.invi.mapper;

import com.invi.domain.MemberVO;

public interface MemberMapper {
	// 회원 정보 등록
	public void insert(MemberVO member);
	
	// 로그인 처리
	public MemberVO login(MemberVO member);
}
