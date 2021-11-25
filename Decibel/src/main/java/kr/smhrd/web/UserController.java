package kr.smhrd.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.smhrd.service.MemberService;

@Controller
public class UserController{
	@Autowired private MemberService service;
	
	//회원가입 화면 요청
	@RequestMapping("/Join_Login.do")
	public String join() {
		return "member/Join_Login";
	}
	
	//신규고객 등록
	@RequestMapping("")
	
}
