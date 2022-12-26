package com.myhome.dao;

import javax.inject.Inject;
import org.apache.ibatis.session.SqlSession;

import org.springframework.stereotype.Repository;

import com.myhome.dto.MemberDto;

@Repository //現在クラスをDAO　beanに登録 
public class MemberDaoImpl implements MemberDao {

@Inject
SqlSession sqlSession;

@Override
public String loginCheck(MemberDto dto) {
return sqlSession.selectOne("member.login_check", dto);
 }
}