package com.myhome.service;

import javax.servlet.http.HttpSession;

import com.myhome.dto.MemberDto;

public interface MemberService {
	
	 public String loginCheck(MemberDto dto, HttpSession session);
	 
	 public void logout(HttpSession session);
}