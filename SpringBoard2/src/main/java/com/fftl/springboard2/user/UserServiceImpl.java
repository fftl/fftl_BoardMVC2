package com.fftl.springboard2.user;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements UserService {
	
	@Autowired
	UserDao userDao;
	
	@Override
	public String create(UserVO user) {
		int result = this.userDao.create(user);
		if(result == 1) {
			String user_id = user.getUserId().toString();
			return user_id;
		} 
		
		return null;
	}
	
	@Override
	public UserVO login(UserVO user) {
		//같은 아이디가 두개라 오류가 발생
		UserVO findUser = this.userDao.login(user.getUsername(), user.getPassword());
		if(findUser != null) {
			return findUser;
		}
		
		return null;
	}
}
