package kr.smhrd.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import kr.smhrd.domain.Board;
import kr.smhrd.domain.User;
// 1. Mapper interface + @(에노테이션)
// 2. Mapper interface + XML(SQM Mapper File)
// http://mybatis.org
// JDBC(java+SQL)-> 생산성이 떨어진다(개발속도가 느리다). 유지보수가 어렵다
@Mapper
public interface BoardMapper { // dao -> mapper
	// board table에서 게시판 리스트를 가져오는 동작구현(boardList)
	// @Select("select * from board")
	public List<Board> boardList() ; // select SQL ~ 
	public void boardInsert(Board vo); // insert SQL
	public Board boardContent(int idx);// select SQL ~ 
	public void boardDelete(int idx); // delete SQL ~ 
	public void boardUpdate(Board vo); // update SQL ~ 
	public void boardUpdateAjax(Board vo); // update SQL ~ 
	
	@Update("update board1 set title=#{title}, writer=#{writer} where idx=#{idx}")
	public void boardUpdateAjax1(Board vo); // XML(X) -> update SQL~
	
	@Delete("delete from board1 where idx=#{idx}")
	public void boardDeleteAjax(int idx);
	
	@Select("select * from user where userId=#{userId} and userPwd=#{userPwd}")
	public User boardLogin(User user);
}
