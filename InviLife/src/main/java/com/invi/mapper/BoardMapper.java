package com.invi.mapper;

import java.util.ArrayList;

import com.invi.domain.BoardVO;

public interface BoardMapper {
	public void insert(BoardVO board);
	public ArrayList<BoardVO> getList();
	public BoardVO read(int bno);
	public boolean update(BoardVO board);
	public boolean delete(int bno);
}
