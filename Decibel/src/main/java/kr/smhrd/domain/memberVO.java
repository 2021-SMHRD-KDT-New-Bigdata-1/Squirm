package kr.smhrd.domain;

import java.sql.Timestamp;
import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class memberVO {
	private String member_id;
	private String member_pw;
	private String member_name;
	private String member_email;
	private String member_nickname;
	private Timestamp member_joindate;
	private String admin_yn;
}
