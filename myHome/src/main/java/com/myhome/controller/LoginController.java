package com.myhome.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * LoginController 
 * 
 * 画面名：ログインページ
 */
@Controller
public class LoginController {
		
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String index() {
		
		return "login";
	}
	
	@RequestMapping(value = "/checkLogin", method = RequestMethod.GET)
	public String checkLogin() {
		
		//ログイン情報チェック
		
		
		
		//sessionにログインユーザー情報設定
		
		
		
		
		return "main";
	}
	
}
