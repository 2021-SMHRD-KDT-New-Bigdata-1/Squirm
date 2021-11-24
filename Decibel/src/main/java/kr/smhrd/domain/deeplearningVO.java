package kr.smhrd.domain;

import java.sql.Timestamp;
import lombok.AllArgsConstructor;
import lombok.Data; // 겟터 셋터 생성해주는 api (롬복)
import lombok.NoArgsConstructor;


@Data
@AllArgsConstructor
@NoArgsConstructor
public class deeplearningVO {
	private int deep_num;
	private int frame_num;
	private String deep_label;
	private Timestamp reg_date;
	private String member_id;
}
