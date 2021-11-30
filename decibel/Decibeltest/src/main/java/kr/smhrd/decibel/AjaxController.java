package kr.smhrd.decibel;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import kr.smhrd.domain.SoundVO;
import kr.smhrd.mapper.Soundmapper;

@RestController
public class AjaxController {
	
	@Autowired
	Soundmapper mapper;
	
	  @RequestMapping("/SoundListJson.do")
	   public List<SoundVO> SoundListJson(Model model) {
	      List<SoundVO> list = mapper.SoundList();
	      return list;  
	   }
	

}
