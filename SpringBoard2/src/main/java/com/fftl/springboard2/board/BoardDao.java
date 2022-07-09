package com.fftl.springboard2.board;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class BoardDao {
	
	@Autowired
	SqlSessionTemplate sqlSessionTemplate;
	
	public List<BoardVO> readAllBoard() {
		return this.sqlSessionTemplate.selectList("board.read_all");
	}
	
	public int createBoard(BoardVO boardVO) {
		return this.sqlSessionTemplate.insert("board.create", boardVO);
	}
	
	public BoardVO readDetail(Long boardId) {
		return this.sqlSessionTemplate.selectOne("board.read_detail", boardId);
	}

}
