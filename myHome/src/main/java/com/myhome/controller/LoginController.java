package com.myhome.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.myhome.dto.MemberDto;
import com.myhome.service.MemberService;

/**
 * LoginController 
 * 
 * 画面名：ログインページ
 */
@Controller
public class LoginController {
	@Autowired
	private MemberService memberService;
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String index() {
		
		return "login";
	}
	
	@RequestMapping(value = "/checkLogin", method = RequestMethod.GET)
	public ModelAndView checkLogin(@ModelAttribute MemberDto dto, HttpSession session) {
		String name = memberService.loginCheck(dto, session);  
		 ModelAndView mav = new ModelAndView();
		  if (name != null) { // 로그인 성공 시
			  mav.setViewName("home"); // 뷰의 이름
		  }else { // 로그인 실패 시
			  mav.setViewName("member/login"); 		
			  mav.addObject("message", "error");
		  }
		     return mav;
		 }
		
		//ログイン情報チェック
		
		
		
		//sessionにログインユーザー情報設定
	
}
