package kr.smhrd.decibel;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.smhrd.domain.MemberVO;

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
	
	@RequestMapping("/train.do")
	public String train() {
		return "train";
	}
	

//	@PostMapping("/m_login.do")
//	public String processlogin(@ModelAttribute("member") MemberVO member, Model model) {
//		System.out.println(member.getMember_email());
//		System.out.println(member.getMember_pw());
//		return "train";
//	}
	
//	@RequestMapping(value = "/login_check.do")
//	public String login_check(Model model, HttpServletRequest request,MemberVO member) throws Exception{
//		//회원 유무 확인 후 회원 정보 저장
//		MemberVO member = loginService.checkLogin(MemberVO);
//		
//		//회원이 맞을 경우 세션에 회원 로그인 값 담아주기
//		if(member != null && !member)
//	}
//	public String processlogin(@ModelAttribute("member") MemberVO member, Model model) {
//		System.out.println(member.getMember_email());
//		System.out.println(member.getMember_pw());
//		return "train";
//	}
	
//	@RequestMapping(value = "/m_login.do")
//    public String m_login(MemberVO member, HttpServletRequest req, RedirectAttributes attr)throws Exception{
//		HttpSession session = req.getSession();
//		
//		if(member == null) {
//			session.setAttribute("member", null);
//			 System.out.println("fail");
//			
//		} else {
//			session.setAttribute("member", member);
//			System.out.println("success");
//		}
//		return "main";
//	}
	      
	
	
}
