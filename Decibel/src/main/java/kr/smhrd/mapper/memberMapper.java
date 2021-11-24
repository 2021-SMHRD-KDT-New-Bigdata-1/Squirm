package kr.smhrd.mapper;


import org.springframework.stereotype.Repository;


import kr.smhrd.domain.memberVO;
// 1. Mapper interface + @(에노테이션)
// 2. Mapper interface + XML(SQM Mapper File)
// http://mybatis.org
// JDBC(java+SQL)-> 생산성이 떨어진다(개발속도가 느리다). 유지보수가 어렵다
@Repository
	public interface memberMapper{
		void createmember(memberVO member);
		
	
}
