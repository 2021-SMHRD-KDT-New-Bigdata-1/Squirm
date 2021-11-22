package kr.smhrd.web;
//POJO

import java.util.List;

import javax.servlet.http.HttpSession;

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
import org.springframework.web.bind.annotation.ResponseBody;

import kr.smhrd.domain.Board;
import kr.smhrd.domain.User;
import kr.smhrd.mapper.BoardMapper;

@Controller // 반드시 어노테이션을 붙여줘야한다
public class BoardController {
	// 이미 메모리에 만들어진 객체를 가져오는 기법 (DI기법 ==> Dependency Injection) --> 의존성 주입

	
	@Autowired //Inject도 사용가능하다
	BoardMapper mapper; // HandlerMapping(*)
	 
	@RequestMapping("/main.do")
	public String main() {
		return "main"; // main.jsp(회원인증여부를 체크)
	}
	
	@RequestMapping("/boardLogin.do")
	public String boardLogin(User user, HttpSession session) {
		// 로그인 처리
		User vo = mapper.boardLogin(user);
		if(vo!=null) { //성공!
			session.setAttribute("vo", vo); // 객체 바인딩 ( 세션 바인딩 )
		}
		
		return "redirect:/main.do";
	}
	
	@RequestMapping("/boardLogout.do")
	public String boardLogout(HttpSession session) {
		//로그아웃처리
		session.invalidate(); //세션 무효화
		return "redirect:/main.do";
		
	}
	

	/*
	 * 
	 * @RequestMapping("/boardList.do") // >> ()안의 요청이 들어오면 실행주는 메소드를 만들어준다 public
	 * String boardList(Model model) { List<Board> list = mapper.boardList();
	 * //boardList.jsp (view) // 객체바인딩(***********************) // ==> 특정메모리에 객체를
	 * 연결하는 기술 model.addAttribute("list", list); // ViewResolver return "boardList";
	 * ///WEB-INF/views/boardList.jsp
	 * 
	 * }
	 * 
	 * 
	 * @RequestMapping("/boardForm.do") public String boardForm() { // 글쓰기 View로
	 * 이동(boardForm.jsp) return "boardForm"; }
	 * 
	 * @RequestMapping("/boardInsert.do") public String boardInsert(Board vo) { //
	 * 파라미터 자동 수집(Board) mapper.boardInsert(vo);
	 * 
	 * return "redirect:/boardList.do"; // redirect: ViewResolver 가 동작하지 않는다
	 * 
	 * }
	 * 
	 * @RequestMapping("/boardContent.do") public String boardContent(int idx, Model
	 * model) { // @RequestParam("idx") int id = 일종의 알리아스 형태 변수의 이름 받는 변수와 달라도 가능하게
	 * 해줌 Board vo = mapper.boardContent(idx); model.addAttribute("vo",vo); return
	 * "boardContent"; }
	 * 
	 * @RequestMapping("/boardDelete.do") public String boardDelete(int idx, Model
	 * model) { mapper.boardDelete(idx);
	 * 
	 * return "redirect:/boardList.do"; }
	 * 
	 * @RequestMapping("/boardUpdate.do") public String boardUpdate(Board vo) {
	 * mapper.boardUpdate(vo);
	 * 
	 * return "redirect:/boardList.do"; }
	 */

}
