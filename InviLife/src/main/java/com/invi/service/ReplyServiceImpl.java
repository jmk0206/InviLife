package com.invi.service;

import java.util.ArrayList;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.invi.domain.ReplyVO;
import com.invi.mapper.BoardMapper;
import com.invi.mapper.ReplyMapper;

// 구현 메서드
@Service
public class ReplyServiceImpl implements ReplyService {
	private static final Logger logger = LoggerFactory.getLogger(ReplyServiceImpl.class);
	
	@Autowired
	private ReplyMapper rmapper;
	
	@Autowired
	private BoardMapper bmapper;

	// 댓글 쓰기
	@Transactional
	public int register(ReplyVO vo) {
		logger.info("service register" + vo);
		return rmapper.insert(vo);
	}

	// 댓글 목록
	public ArrayList<ReplyVO> getList(int bno) {
		logger.info("get Reply List of a Board : " + bno);
		return rmapper.getList(bno);
	}

	// 댓글 수정
	public int modify(ReplyVO vo) {
		return 0;
	}

	// 댓글 삭제
	public int remove(int rno) {
		return 0;
	}
}
