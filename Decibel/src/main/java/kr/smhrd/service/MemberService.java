package kr.smhrd.service;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.smhrd.domain.MemberVO;

@Service
public class MemberService {
	@Autowired kr.smhrd.mapper.MemberMapper memberMapper;
	
	public void createmember(MemberVO membervo) {
		memberMapper.createmember(membervo);
	}
	@Autowired
	MemberService memberService;

	@RequestMapping(value = "/Join_Login", method = RequestMethod.GET)
	public String getJoin_Login(Locale locale, Model model){
		logger.info("welcome locale is {}.",locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		String formattedDate = dateFormat.format(date);
		model.addAttribute("serverTime",formattedDate);
		return "Join_Login";

	}
	@RequestMapping(value = "/Join_Login", method=RequestMethod.POST)
	public String postJoin_Login(member member) {
		memberService.createmember(member);
		logger.info("user sign up!");
		
		return "redirect:/";
	}

}
