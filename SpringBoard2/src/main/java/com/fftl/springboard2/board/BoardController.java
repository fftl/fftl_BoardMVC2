package com.fftl.springboard2.board;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.servlet.ModelAndView;

import com.fftl.springboard2.user.UserVO;


@Controller
@RequestMapping("/board")
public class BoardController {
	
	@Autowired
	BoardService boardService;
	
	@RequestMapping(value="/list", method=RequestMethod.GET)
	public ModelAndView readAllBoard(@ModelAttribute BoardVO board) {
		ModelAndView mav = new ModelAndView();
		List<BoardVO> boards = this.boardService.readAllBoard();
		mav.addObject("data", boards);
		mav.setViewName("/board/list");
		return mav;
	}
	
	@RequestMapping(value="/create", method=RequestMethod.GET)
	public ModelAndView create(@ModelAttribute BoardVO board) {
		ModelAndView mav = new ModelAndView();
		List<BoardVO> boards = this.boardService.readAllBoard();
		mav.addObject("data", boards);
		mav.setViewName("/board/create");
		return mav;
	}
	
	@RequestMapping(value="/create", method=RequestMethod.POST)
	public ModelAndView createBoard(@ModelAttribute BoardVO boardVO) {
		ModelAndView mav = new ModelAndView();
		int n = this.boardService.boardCreate(boardVO);
		if(n>0) {
			mav.setViewName("redirect:/board/list");
		};
		return mav;
	}
	
	@RequestMapping(value="/detail/{boardId}", method=RequestMethod.GET)
	public ModelAndView detail(@PathVariable Long boardId) {
		ModelAndView mav = new ModelAndView();
		BoardVO boardVO = this.boardService.readDetail(boardId);
		this.boardService.boardUpdateView(boardId);
		
		if(boardVO != null) {
			mav.addObject("data", boardVO);
			mav.setViewName("/board/detail");
		};
		
		return mav;
	}
	
	@RequestMapping(value="/update/{boardId}", method=RequestMethod.GET)
	public ModelAndView update(@PathVariable Long boardId) {
		ModelAndView mav = new ModelAndView();
		BoardVO boardVO = this.boardService.readDetail(boardId);
		mav.addObject("data", boardVO);
		mav.setViewName("/board/update");
		return mav;
	}
	
	@RequestMapping(value="/update", method=RequestMethod.POST)
	public ModelAndView updateBoard(@ModelAttribute BoardVO boardVO) {
		ModelAndView mav = new ModelAndView();
		int n = this.boardService.boardUpdate(boardVO);
		if(n>0) {
			mav.setViewName("redirect:/board/list");
		};
		
		return mav;
	}
	
}
