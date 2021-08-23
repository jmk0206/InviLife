package com.invi.service;

import java.util.ArrayList;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.invi.domain.BoardVO;
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
		mapper.insert(board);
	}

	public BoardVO get(int bno) {
		return mapper.read(bno);
	}

	public boolean modify(BoardVO board) {
		return mapper.update(board);
	}

	public boolean remove(int bno) {
		return mapper.delete(bno);
	}

	public ArrayList<BoardVO> getList() {
		return mapper.getList();
	}

}
