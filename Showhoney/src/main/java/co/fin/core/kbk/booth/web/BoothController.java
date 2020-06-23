package co.fin.core.kbk.booth.web;

import java.io.File;
import java.io.IOException;
import java.nio.file.Path;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import co.fin.core.kbk.booth.vo.BoothService;
import co.fin.core.kbk.booth.vo.BoothVo;
import co.fin.core.kbk.product.vo.ProductVo;
import co.fin.core.kjh.companyuser.vo.CompanyUserVo;

@Controller
public class BoothController {
	
	@Autowired
	private BoothService boothService;
	
	@RequestMapping(value = "/boothList.do")
	public ModelAndView loginCheck(BoothVo vo, ModelAndView mav) {
		List<BoothVo> list = boothService.getSelectBoothList(vo);
		mav.addObject("list", list);
		mav.setViewName("com/booth/boothList");
		
		return mav;
	}
	
	@RequestMapping("/boothForm.do")
	public String boothForm(Model model) {
		return "com/companyuser/boothForm";
	}
	
//	@RequestMapping("/boothInsert.do")
//	public ModelAndView boothInsert(HttpServletRequest request, BoothVo bvo, ProductVo pvo,  ModelAndView mav, CompanyUserVo cvo) throws IOException {
//			
//		boothService.boothInsert(bvo, pvo, request);
//		mav.setViewName("com/companyuser/boothInsert");
//		return mav;
//	}
	
	@RequestMapping("/boothModifyForm.do")
	public String boothModifyForm(Model model) {
		return "com/companyuser/boothModifyForm";
	}

}
