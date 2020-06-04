package com.webproject.app;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
 
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

@Controller
public class SampleController {
	private static final Logger logger = LoggerFactory.getLogger(SampleController.class);
	
	
	@RequestMapping(value = "home.do", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		return "home";
	}

	@RequestMapping(value = "login.do", method = RequestMethod.GET)
	public String login(Locale locale, Model model) {
		return "login";
	}
	
	@RequestMapping(value = "join.do", method = RequestMethod.GET)
	public String join(Locale locale, Model model) {
		return "join";
	}
	
	@RequestMapping(value = "joinAction.do", method = {RequestMethod.GET, RequestMethod.POST})
	public String joinAction(Locale locale, Model model) {
		return "joinAction";
	}
	
	@RequestMapping(value = "loginAction.do", method = {RequestMethod.GET, RequestMethod.POST})
	public String loginAction(Locale locale, Model model) {
		return "loginAction";
	}
	
	@RequestMapping(value = "logoutAction.do", method = {RequestMethod.GET, RequestMethod.POST})
	public String logoutAction(Locale locale, Model model) {
		return "logoutAction";
	}
}