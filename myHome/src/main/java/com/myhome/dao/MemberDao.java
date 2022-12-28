package com.myhome.dao;

import java.util.Date;

import org.springframework.stereotype.Repository;

import com.myhome.dto.MemberDto;

@Repository
public interface MemberDao {
	 
	public String loginCheck(MemberDto dto);
} 