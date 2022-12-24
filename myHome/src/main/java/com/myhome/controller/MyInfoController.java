package com.myhome.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * MyInfoController 
 * 
 * 画面名：マイページ
 */
@Controller
public class MyInfoController {
		
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/myInfo", method = RequestMethod.GET)
	public String myInfo() {
		
		return "myInfo";
	}
	
}
