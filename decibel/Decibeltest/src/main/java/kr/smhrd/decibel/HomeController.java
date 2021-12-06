package kr.smhrd.decibel;

import javax.servlet.http.HttpSession;
 
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.smhrd.domain.MemberVO;
import kr.smhrd.domain.WordVO;
import kr.smhrd.mapper.MemberMapper;
import kr.smhrd.mapper.Wordmapper;

@Controller
public class HomeController {
 

	@RequestMapping("/list.do")
	public String playlist() {
		return "list";
				
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
	@RequestMapping("/train2.do")
	public String train2() {
		return "train2";
	}
	@RequestMapping("/loading.do")
	public String loading() {
		return "loading";
	}
	
	@Autowired
	MemberMapper mapper;
	
		  
	      @RequestMapping("/m_login.do")
	      public String mLogin(MemberVO member, HttpSession session) {
	    	  //로그인 처리
	    	  MemberVO vo = mapper.mLogin(member);
	    	  if(vo != null) {
	    		  session.setAttribute("vo", vo);
	    	  }
	    	  return "redirect:/train.do";
	    	  
	      }
	      
	      @RequestMapping("/logout.do")
	      public String logout(HttpSession session) {
	    	  //로그아웃 처리
	    	  session.invalidate();
	    	  return "redirect:/login.do";
	      }
	      
	@Autowired
	Wordmapper mapper2;
	
	      @RequestMapping("/list.do")
	      public WordVO sted(WordVO word) {
	    	  // 학습완료 리스트
	    	  WordVO vo = mapper2.sted(word);
	    	  
	    	  return vo;
	      }
	
}
