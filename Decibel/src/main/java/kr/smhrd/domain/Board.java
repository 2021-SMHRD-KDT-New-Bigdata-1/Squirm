package kr.smhrd.domain;

import lombok.AllArgsConstructor;
import lombok.Data; // 겟터 셋터 생성해주는 api (롬복)
import lombok.NoArgsConstructor;


@Data
@AllArgsConstructor
@NoArgsConstructor
public class Board {
	
	private int idx;
	private String userId;
	private String title;
	private String contents;
	private String writer; // 작성자 => userName
	private String indate;
	private int count;
	// setter, getter -> 자동으로 만들수있다.(lombok : 롬복)
}
