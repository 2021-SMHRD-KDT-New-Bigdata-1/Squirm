package kr.smhrd.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.smhrd.domain.Sound;


@Mapper
public interface Soundmapper {
	
	public List<Sound> SoundList();
	
	
}
