package com.chafy.hblog.persistence;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.chafy.hblog.domain.User;

@Repository
public class UserDAO {
	@Autowired
	private SqlSessionTemplate mybatis;
	
	public void insertUser(User user) {
		mybatis.insert("insertUser", user);
	}
	
	
	public void updatetUser(User user) {
		mybatis.update("updatetUser", user);
	}
	
	
	public int deleteUser(int id) {
		return mybatis.delete("deleteUser", id);
	}
	
	
	public User getUser(User user) {
		return mybatis.selectOne("getUser", user);
	}
	
	
	public List<User> getUserList() {
		return mybatis.selectList("getUserList");
	}
	
	public void deleteAll() {
		mybatis.delete("deleteAll");
	}
	
	
}
