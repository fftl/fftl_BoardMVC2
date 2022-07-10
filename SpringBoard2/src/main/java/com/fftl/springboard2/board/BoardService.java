package com.fftl.springboard2.board;

import java.util.List;

public interface BoardService {

	List<BoardVO> readAllBoard();

	int boardCreate(BoardVO boardVO);

	BoardVO readDetail(Long boardId);
	
	int boardUpdate(BoardVO boardVO);
	
	int boardUpdateView(Long boardId);


}
