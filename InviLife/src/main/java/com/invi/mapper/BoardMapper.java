package com.invi.mapper;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;

import com.invi.domain.BoardVO;
import com.invi.domain.Criteria;

public interface BoardMapper {
	public void insert(BoardVO board);
	public void insertSelectKey(BoardVO board);
	public ArrayList<BoardVO> getList();
	public ArrayList<BoardVO> getListWidthPaing(Criteria cri);
	public BoardVO read(int bno);
	public boolean update(BoardVO board);
	public boolean delete(int bno);
	public int getTotalCount(Criteria cri);
	// 댓글 건수 update
	public void updateReplycnt(@Param("bno") int bno, @Param("amount") int amount);
}
