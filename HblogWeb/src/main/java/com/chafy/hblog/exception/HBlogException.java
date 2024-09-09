package com.chafy.hblog.exception;


public class HBlogException extends RuntimeException {
	private static final long serialVersionUID = 1L;
	
	public HBlogException(String messString) {
		super(messString);
	}

}
