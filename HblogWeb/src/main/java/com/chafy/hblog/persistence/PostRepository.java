package com.chafy.hblog.persistence;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.chafy.hblog.domain.Post;

@Repository
public interface PostRepository extends JpaRepository<Post, Integer>{
	
}
