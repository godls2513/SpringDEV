package com.chafy.hblog.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;

import com.chafy.hblog.domain.Post;
import com.chafy.hblog.domain.User;
import com.chafy.hblog.dto.ResponseDTO;
import com.chafy.hblog.service.PostService;

import jakarta.servlet.http.HttpSession;

@Controller
public class PostController {
	
	@Autowired
	private PostService postService;
	
	@PostMapping("/post")
	public @ResponseBody ResponseDTO<?> insertPost(@RequestBody Post post, HttpSession session) {
		// Post 객체를 영속화하기 전 연관된 User 엔티티 설정
		User principal = (User) session.getAttribute("principal");
		post.setUser(principal);
		post.setCnt(0);
		
		postService.insertPost(post);
		
		return new ResponseDTO<>(HttpStatus.OK.value(), "새로운 포스트를 등록했습니다.");
	}
	
	@GetMapping({"","/"})
	public String index() {
		return "index";
	}
	
	@GetMapping("/post/insertPost")
	public String insertPost( ) {
		return "post/insertPost";
	}
}
