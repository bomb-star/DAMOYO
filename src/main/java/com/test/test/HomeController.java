package com.test.test;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "home";
	}
	@RequestMapping(value = "/zicgurae/personal", method = RequestMethod.GET)
	public String personal() {
		return "zicgurae/personal";
	}
	@RequestMapping(value = "/zicgurae/company", method = RequestMethod.GET)
	public String company() {
		return "zicgurae/company";
	}
	@RequestMapping(value = "/zicgurae/national", method = RequestMethod.GET)
	public String national() {
		return "zicgurae/national";
	}
	
	@RequestMapping(value = "/sisae/mainSisae", method = RequestMethod.GET)
	public String mainSisae() {
		return "sisae/mainSisae";
	}
	
	@RequestMapping(value = "/eroe/mainEroe", method = RequestMethod.GET)
	public String mainEroe() {
		return "eroe/mainEroe";
	}
	
	@RequestMapping(value = "/eroe/eroeStatus", method = RequestMethod.GET)
	public String eroeStatus() {
		return "eroe/eroeStatus";
	}
	
	@RequestMapping(value = "/eroe/eroeStatus_tab2", method = RequestMethod.GET)
	public String eroeStatus_tab2() {
		return "eroe/eroeStatus_tab2";
	}
	
	@RequestMapping(value = "/eroe/customerReview", method = RequestMethod.GET)
	public String customerReview() {
		return "eroe/customerReview";
	}
	
	@RequestMapping(value = "/eroe/searchSalesman", method = RequestMethod.GET)
	public String searchSalesman() {
		return "eroe/searchSalesman";
	}
	
	/* 분양 */
	@RequestMapping(value = "/bunyang/main", method = RequestMethod.GET)
	public String bunyangMain() {
		return "bunyang/main";
	}
	@RequestMapping(value = "/bunyang/information", method = RequestMethod.GET)
	public String bunyangInformation() {
		return "bunyang/information";
	}
	@RequestMapping(value = "/bunyang/plan", method = RequestMethod.GET)
	public String bunyangPlan() {
		return "bunyang/plan";
	}
	@RequestMapping(value = "/bunyang/news", method = RequestMethod.GET)
	public String bunyangNews() {
		return "bunyang/news";
	}
	@RequestMapping(value = "/bunyang/site", method = RequestMethod.GET)
	public String bunyangSite() {
		return "bunyang/site";
	}
	@RequestMapping(value = "/bunyang/supply", method = RequestMethod.GET)
	public String bunyangSupply() {
		return "bunyang/supply";
	}
	@RequestMapping(value = "/bunyang/strategy", method = RequestMethod.GET)
	public String bunyangStrategy() {
		return "bunyang/strategy";
	}
	@RequestMapping(value = "/bunyang/develop", method = RequestMethod.GET)
	public String bunyangDevelop() {
		return "bunyang/develop";
	}
	
	/* 경매 */
	@RequestMapping(value = "/gyeongmae/inquiry", method = RequestMethod.GET)
	public String gyeongmaeInquiry() {
		return "gyeongmae/inquiry";
	}
	@RequestMapping(value = "/gyeongmae/study", method = RequestMethod.GET)
	public String gyeongmaeStudy() {
		return "gyeongmae/study";
	}
	@RequestMapping(value = "/gyeongmae/result", method = RequestMethod.GET)
	public String gyeongmaeResult() {
		return "gyeongmae/result";
	}
	@RequestMapping(value = "/gyeongmae/community", method = RequestMethod.GET)
	public String gyeongmaeCommunity() {
		return "gyeongmae/community";
	}
	@RequestMapping(value = "/gyeongmae/fun", method = RequestMethod.GET)
	public String gyeongmaeFun() {
		return "gyeongmae/fun";
	}
	@RequestMapping(value = "/gyeongmae/mypage", method = RequestMethod.GET)
	public String gyeongmaeMypage() {
		return "gyeongmae/mypage";
	}
	
	
	
}
