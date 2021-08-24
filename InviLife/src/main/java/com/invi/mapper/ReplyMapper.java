package com.invi.mapper;

import java.util.ArrayList;

import com.invi.domain.ReplyVO;

public interface ReplyMapper {
	// 댓글 쓰기
	public int insert(ReplyVO vo);
	// 댓글 목록
	public ArrayList<ReplyVO> getList(int bno);
	// 댓글 수정
	public int update(ReplyVO vo);
	// 댓글 삭제
	public int delete(int rno);
}
