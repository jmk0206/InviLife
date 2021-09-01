package com.invi.service;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.invi.domain.MemberVO;
import com.invi.mapper.MemberMapper;

@Service
public class MemberServiceImpl implements MemberService {
	private static final Logger logger = LoggerFactory.getLogger(MemberServiceImpl.class);
	
	@Autowired
	private MemberMapper mapper;
	
	// 회원가입
	@Transactional
	public void sign(MemberVO member) {
		logger.info("sign...");
		mapper.insert(member);
	}

}
