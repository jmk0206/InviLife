package com.invi.service;

import java.util.ArrayList;

import com.invi.domain.BoardVO;

// 인터페이스(설계)
public interface BoardService {
	// 게시판 글쓰기(register)
	public void register(BoardVO board);
	// 게시판 상세페이지(get)
	public BoardVO get(int bno);
	// 게시판 글수정(modify)
	public boolean modify(BoardVO board);
	// 게시판 글삭제(remove)
	public boolean remove(int bno);
	// 게시판 글목록 리스트(getList)
	public ArrayList<BoardVO> getList();
}
