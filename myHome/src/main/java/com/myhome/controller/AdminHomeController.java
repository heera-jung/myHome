package com.myhome.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * AdminHomeController 
 * 
 * 画面名：管理者ページ
 */
@Controller
public class AdminHomeController {
		
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/admin", method = RequestMethod.GET)
	public String adminIndex() {
		
		return "adminPg";
	}
	
}
