package com.invi.service;

import java.util.ArrayList;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.invi.domain.BoardVO;
import com.invi.domain.Criteria;
import com.invi.mapper.BoardMapper;

@Service
public class BoardServiceImpl implements BoardService {
	private static final Logger logger = LoggerFactory.getLogger(BoardServiceImpl.class);

	@Autowired
	private BoardMapper mapper;
	
	// 게시판 글쓰기(register) 구현부
	@Transactional
	public void register(BoardVO board) {
		logger.info("register...."+board);
		// tbl_board테이블 insert
		mapper.insertSelectKey(board);
	}

	//  게시판 상세페이지(get) 구현부
	public BoardVO get(int bno) {
		return mapper.read(bno);
	}

	// 게시판 글수정(modify) 구현부
	// boolean : true, false
	public boolean modify(BoardVO board) {
		return mapper.update(board);
	}

	// 게시판 글삭제(remove) 구현부
	public boolean remove(int bno) {
		return mapper.delete(bno);
	}

	// 게시판 글목록 리스트(getList) 구현부
	public ArrayList<BoardVO> getList() {
		return mapper.getList();
	}

	// 게시판 글목록 리스트 + 페이징처리(getList) 구현부
	public ArrayList<BoardVO> getListWidthPaing(Criteria cri) {
		return mapper.getListWidthPaing(cri);
	}

	// 게시판 글목록 리스트 + 페이징 처리하는데 필요한 전체 데이터
	@Override
	public int getTotalCount(Criteria cri) {
		return mapper.getTotalCount(cri);
	}

}
