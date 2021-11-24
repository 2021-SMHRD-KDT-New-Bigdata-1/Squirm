package kr.smhrd.domain;

import java.math.BigDecimal;
import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data; // 겟터 셋터 생성해주는 api (롬복)
import lombok.NoArgsConstructor;


@Data
@AllArgsConstructor
@NoArgsConstructor
public class frameVO {
	private int frame_num;
	private int sound_num;
	private String frame_file;
	private BigDecimal frame_time;
	private String frame_samplerate;
	private Date frame_frequency;
}
