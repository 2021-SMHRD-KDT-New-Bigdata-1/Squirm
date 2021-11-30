package kr.smhrd.decibel;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {


	@RequestMapping("/list.do")
	public String playlist() {
		return "list";
				
	}
	@RequestMapping("/decibel.do")
	public String decibel() {
		return "decibel";
				
	}
	@RequestMapping("/main.do")
	public String main() {
		return "main";		
	}
	
	@RequestMapping("/login.do")
	public String login() {
		return "login";		
	}
	
	@RequestMapping("/flask_send.do")
	public String flask_send() {
		return "flask_send";		
	}
	

	
	
	
}
