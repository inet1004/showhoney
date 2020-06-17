package co.fin.core.kjh.company.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.servlet.ModelAndView;

import co.fin.core.kjh.company.vo.CompanyService;
import co.fin.core.kjh.company.vo.CompanyVo;

@Controller
public class CompanyController {
	@Autowired
	private CompanyService companyService;
	
	

	@RequestMapping("/companyList.do")
	public ModelAndView companyList(ModelAndView mav) {
		List<CompanyVo> list = companyService.getSelectList();
		mav.addObject("list", list);
		mav.setViewName("/company/companyList");
		return mav;
	}
	
	@RequestMapping("/companyInsertForm.do")
	
	public ModelAndView companyInsertForm(ModelAndView mav) {
		mav.setViewName("/company/companyInsert");
		return mav;
	}
	
	@RequestMapping("/companyInsert.do")
	
	public ModelAndView companyInsert(CompanyVo vo, ModelAndView mav) {
		companyService.companyInsert(vo);
		
		mav.setViewName("/main/main");
		return mav;
	}
	
	
}
