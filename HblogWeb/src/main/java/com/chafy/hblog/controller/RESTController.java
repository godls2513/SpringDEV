package com.chafy.hblog.controller;

import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.chafy.hblog.domain.User;

@RestController
public class RESTController {
	// GET: SELECT
	@GetMapping("/hblog")
	public User httpGet() {
		User findUser = User.builder()
				.id(1)
				.username("mini")
				.password("222")
				.email("mini@test.com")
			.build();
		return findUser;
	}
	
	//POST: INSERT
	@PostMapping("/hblog")
	public String httpPost(@RequestBody User user) {
		return "POST 요청처리 : " + user.toString();
	}
	
	//PUT: UPDATE
	@PutMapping("/hblog")
	public String httpPut(@RequestBody User user) {
		return "PUT 요청처리 : " + user.toString();
	}
	
	// DELETE: DELETE
	@DeleteMapping("/hblog")
	public String httpDelete(@RequestParam int id) {
		return "DELETE 요청처리 : " + id;
	}
	
}
