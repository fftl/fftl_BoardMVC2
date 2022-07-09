package com.fftl.springboard2.user;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@RequestMapping("/user")
@Controller
public class UserController {
	
	@Autowired
	UserService userService;
	
	@RequestMapping(value="/create", method = RequestMethod.GET)
	public ModelAndView create() {
		return new ModelAndView("user/create");
	}
	
	@RequestMapping(value="/create", method = RequestMethod.POST)
	public ModelAndView createUser(@ModelAttribute UserVO user) {
		ModelAndView mav = new ModelAndView();
		String userId = this.userService.create(user);
		if(userId != null) {
			mav.addObject("userId", userId);
			mav.setViewName("redirect:/");
		}
		
		return mav;
	}
	
	@RequestMapping(value="/login", method = RequestMethod.POST)
	public ModelAndView login(@ModelAttribute UserVO user, HttpServletRequest request) {
		ModelAndView mav = new ModelAndView();
		UserVO loginUser = this.userService.login(user);
		if(loginUser != null) {
			mav.setViewName("redirect:/board/list");
			HttpSession session = request.getSession(true);
			session.setAttribute("userId", loginUser.getUserId());
			session.setAttribute("nickname", loginUser.getNickname());
		} else {
			
		}
		
		return mav;
	}
	
//	@RequestMapping(value="/create", method = RequestMethod.GET)
//	public ModelAndView create() {
//		return new ModelAndView("user/create");
//	}
//	
//	@RequestMapping(value="/create", method = RequestMethod.GET)
//	public ModelAndView create() {
//		return new ModelAndView("user/create");
//	}
}
