package com.fftl.springboard2.user;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class UserDao {
	
	@Autowired
	SqlSessionTemplate sqlSessionTemplate;
	
	public int create(User user) {
		return this.sqlSessionTemplate.insert("user.create", user);
	}
	
	public User login(User user) {
		return this.sqlSessionTemplate.selectOne("user.login", user);
	}
	
	public User read(User user) {
		return this.sqlSessionTemplate.selectOne("user.read", user);
	}

	public int update(User user) {
		return this. sqlSessionTemplate.update("user.update", user);
	}
	
	public int delete(User user) {
		return this. sqlSessionTemplate.delete("user.delete", user);
	}
}
