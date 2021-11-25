package kr.smhrd.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;


import kr.smhrd.mapper.MemberMapper;

@RestController
public class AjaxController { //ajax
   
   @Autowired
   MemberMapper mapper;
   
//   @RequestMapping("/boardListJson.do")
//   public List<Board> boardListJson(Model model) {
//      List<Board> list = mapper.boardList();
//      return list;  // json(*)
//   }
//   @RequestMapping("/boardInsertAjax.do")
//   public void boardInsertAjax(Board vo) {
//      mapper.boardInsert(vo);
//   }
//   
//   @RequestMapping("/boardUpdateAjax.do")
//   public void boardUpdateAjax(Board vo) {  // int idx , String contents 를 받아와도 되지만 번거롭다.
//      mapper.boardUpdateAjax(vo);
//   }
//   
//   @RequestMapping("/boardUpdateAjax1.do")
//   public void boardUpdateAjax1(Board vo) { 
//      mapper.boardUpdateAjax1(vo);
//   }
//   
//   @RequestMapping("/boardDeleteAjax.do")
//   public void boardDeleteAjax(int idx) {
//	   mapper.boardDeleteAjax(idx);
//   }
   
}