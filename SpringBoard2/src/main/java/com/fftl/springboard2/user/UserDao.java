package com.fftl.springboard2.user;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class UserDao {
	
	@Autowired
	SqlSessionTemplate sqlSessionTemplate;
	
	public int create(UserVO user) {
		return this.sqlSessionTemplate.insert("user.create", user);
	}
	
	public UserVO login(String username, String password) {
		UserVO uv = new UserVO();
		uv.setUsername(username);
		uv.setPassword(password);
		
		return this.sqlSessionTemplate.selectOne("user.login", uv);
	}
	
	public UserVO read(UserVO user) {
		return this.sqlSessionTemplate.selectOne("user.read", user);
	}

	public int update(UserVO user) {
		return this. sqlSessionTemplate.update("user.update", user);
	}
	
	public int delete(UserVO user) {
		return this. sqlSessionTemplate.delete("user.delete", user);
	}
}
