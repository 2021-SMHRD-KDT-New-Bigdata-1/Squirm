package kr.smhrd.web;
//POJO


import org.springframework.beans.factory.annotation.Autowired;

/*
 *    요청                            Servlet(Controller)
  boardList.do --->    BoardListController
  boardInsert.do --->  BoardInsertController
  boardUpdate.do --->  BoardUpdateController
  boardDelete.do --->  BoardDeleteController
  boardContent.do ---> BoardContentController
 */
// 이것들을 한번에 하도록 해주는것이 POJO가 하는 역할이다.

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.smhrd.domain.memberVO;
import kr.smhrd.mapper.memberMapper;

@Controller 
public class UserController {
	

	@Autowired //Inject도 사용가능하다
	memberMapper mapper; // HandlerMapping(*)
	
	//로그인 기능
	@RequestMapping(value = "/Login", method = RequestMethod.GET)
	public String Login() {
		return "login";
	}
	//회원가입 //requestmapping의 value&method를 통해서 jsp 정보 들어옴
	@RequestMapping(value = "/Join", method = RequestMethod.POST)
	public String Join(memberVO memberVO) {
		//회원가입 메서드
		mapper.
		return "redirect:/";
	}
	
}
