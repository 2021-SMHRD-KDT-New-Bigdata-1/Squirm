package kr.smhrd.domain;

import java.sql.Timestamp;
import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data; // 겟터 셋터 생성해주는 api (롬복)
import lombok.NoArgsConstructor;


@Data
@AllArgsConstructor
@NoArgsConstructor
public class soundVO {
	private int sound_num;
	private String sound_file;
	private String sound_subject;
	private String sound_content;
	private Timestamp upload_date;
	private String member_id; 

}
