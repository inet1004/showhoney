package co.fin.core.kjh.booth.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.servlet.ModelAndView;

import co.fin.core.kjh.booth.vo.BoothService;
import co.fin.core.kjh.booth.vo.BoothVo;

@Controller
public class BoothController {
	@Autowired
	private BoothService boothService;
	
	@RequestMapping(value = "/boothList.do")
	public ModelAndView loginCheck(BoothVo vo, ModelAndView mav) {
		List<BoothVo> list = boothService.getSelectBoothList(vo);
		mav.addObject("list", list);
		mav.setViewName("/booth/boothList");
		return mav;
	}

}
