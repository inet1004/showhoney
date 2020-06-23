package co.fin.core.nhu.exhibition.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.servlet.ModelAndView;

import co.fin.core.kjh.booth.vo.BoothService;
import co.fin.core.kjh.booth.vo.BoothVo;
import co.fin.core.nhu.exhibition.vo.Exhibition2Vo;
import co.fin.core.nhu.exhibition.vo.ExhibitionService;

@Controller
public class ExhibitionController {
	@Autowired
	private ExhibitionService exhibitionService;
	
	@RequestMapping(value = "/exhibitionList.do")
	public ModelAndView exhibitionList(ModelAndView mav) {
		List<Exhibition2Vo> list = exhibitionService.getSelectExhibitionList();
		mav.addObject("list", list);
		mav.setViewName("com/exhibition/exhibitionList");
		return mav;
	}

}
