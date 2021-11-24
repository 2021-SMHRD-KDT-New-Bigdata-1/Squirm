package kr.smhrd.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.smhrd.domain.memberVO;

@Service
public class MemberService {
	@Autowired kr.smhrd.mapper.memberMapper memberMapper;
	
	public void createmember(memberVO membervo) {
		memberMapper.createmember(membervo);
	}
}
