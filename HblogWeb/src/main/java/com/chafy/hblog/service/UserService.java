package com.chafy.hblog.service;

import java.util.function.Supplier;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.chafy.hblog.domain.RoleType;
import com.chafy.hblog.domain.User;
import com.chafy.hblog.persistence.UserRepository;

@Service
public class UserService {
	@Autowired
	private UserRepository userRepository;

	@Transactional(readOnly = true)
	public User getuser(String username) {
		// 검색 결과가 없을 때 빈 User 객체 반환
		User findUser = userRepository.findByUsername(username).orElseGet(
					new Supplier<User>() {
						@Override
						public User get() {
							return new User();
						}
					});
		return findUser;
	}

	@Transactional
	public void insertUser(User user) {
		user.setRole(RoleType.USER);
		userRepository.save(user);
	}
}
