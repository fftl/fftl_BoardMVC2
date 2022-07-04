package com.fftl.springboard2.user;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements UserService {
	
	@Autowired
	UserDao userDao;
	
	@Override
	public String create(User user) {
		int result = this.userDao.create(user);
		if(result == 1) {
			String user_id = user.getUserId().toString();
			return user_id;
		} 
		
		return null;
	}
	
	@Override
	public String login(User user) {
		//같은 아이디가 두개라 오류가 발생중..
		User findUser = this.userDao.login(user);
		if(findUser != null) {
			String user_id = findUser.getUserId().toString();
			return user_id;
		}
		
		return null;
	}
}
