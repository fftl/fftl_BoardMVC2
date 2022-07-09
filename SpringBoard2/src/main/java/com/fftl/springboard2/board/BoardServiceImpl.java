package com.fftl.springboard2.board;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class BoardServiceImpl implements BoardService{
	
	@Autowired
	BoardDao boardDao;
	
	@Override
	public List<BoardVO> readAllBoard(){
		return this.boardDao.readAllBoard();
	}
	
	@Override
	public int boardCreate(BoardVO boardVO) {
		return this.boardDao.createBoard(boardVO);
	}
	
	@Override
	public BoardVO readDetail(Long boardId) {
		return this.boardDao.readDetail(boardId);
	}

}
