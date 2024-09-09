package com.chafy.hblog;

import static org.junit.jupiter.api.Assertions.assertEquals;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import com.chafy.hblog.domain.User;
import com.chafy.hblog.persistence.UserDAO;

@SpringBootTest
public class UserDAOTest {
	@Autowired
	private UserDAO userDAO;

	@Test
	void getUserListTest() {
		userDAO.deleteAll();
		
		User user = new User();
		user.setId(1);
		user.setUsername("test");
		user.setPassword("test123");
		user.setEmail("test@test.com");
		
		int before = userDAO.getUserList().size();
		userDAO.insertUser(user);
		
		int after = userDAO.getUserList().size();
		
		assertEquals(before + 1 , after);
	}
	
	@Test
	void deleteTest() {
		userDAO.deleteAll();
		
		User user = new User();
		System.out.println(user);

		user.setId(1);
		user.setUsername("test");
		user.setPassword("test123");
		user.setEmail("test@test.com");
		
		userDAO.insertUser(user);
		System.out.println(user);
		int after = userDAO.getUserList().size();
		
		int id = user.getId();
		
		userDAO.deleteUser(id);
		int delete = userDAO.getUserList().size();
		
		assertEquals(after-1 , delete);
	}
}
