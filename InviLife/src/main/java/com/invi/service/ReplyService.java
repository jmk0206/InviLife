package com.invi.service;

import java.util.ArrayList;

import com.invi.domain.ReplyVO;

// 추상메서드
public interface ReplyService {
	// 댓글 쓰기
	public int register(ReplyVO vo);
	// 댓글 목록 리스트
	public ArrayList<ReplyVO> getList(int bno);
	// 댓글 수정
	public int modify(ReplyVO vo);
	// 댓글 삭제
	public int remove(int rno);
}
