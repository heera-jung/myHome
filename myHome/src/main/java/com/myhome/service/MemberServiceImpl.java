package com.myhome.service;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;

import com.myhome.dao.MemberDao;
import com.myhome.dto.MemberDto;

@Service // service bean으로 등록
public class MemberServiceImpl implements MemberService {

@Inject
MemberDao memberDao;
@Override
public String loginCheck(MemberDto dto, HttpSession session) {
String name = memberDao.loginCheck(dto);
 if (name != null) { // 세션 변수 저장
  session.setAttribute("userid", dto.getUserid());
  session.setAttribute("name", name);
}
 return name; 
}

@Override
public void logout(HttpSession session) {
 session.invalidate(); // 세션 초기화
 }
}