package com.fftl.springboard2.user;

public interface UserService {

	String create(UserVO user);

	UserVO login(UserVO user);
	
}
