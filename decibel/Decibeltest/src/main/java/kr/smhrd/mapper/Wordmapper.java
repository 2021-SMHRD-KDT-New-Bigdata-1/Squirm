package kr.smhrd.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import kr.smhrd.domain.WordVO;

@Mapper
public interface Wordmapper {

	public List<WordVO> WordList();
	
	@Select("select * from word_tbl where member_email = #{member_email} and member_pw = #{member_pw}")
	public WordVO sted(WordVO word);
}
