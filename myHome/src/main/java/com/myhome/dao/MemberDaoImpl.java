package com.myhome.dao;

import javax.inject.Inject;
import org.apache.ibatis.session.SqlSession;

import org.springframework.stereotype.Repository;

import com.myhome.dto.MemberDto;

@Repository // 현재 클래스를 dao bean으로 등록
public class MemberDaoImpl implements MemberDao {

@Inject
SqlSession sqlSession; // SqlSession 의존관계 주입

@Override
public String loginCheck(MemberDto dto) {
return sqlSession.selectOne("member.login_check", dto);
 }
}