package co.fin.core.kjh.companyuser.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import co.fin.core.kjh.company.vo.CompanyService;
import co.fin.core.kjh.company.vo.CompanyVo;
import co.fin.core.kjh.companyuser.vo.CompanyUserService;
import co.fin.core.kjh.companyuser.vo.CompanyUserVoTest;
import co.fin.core.kjh.companyuser.vo.CompanyUserVo;


@Controller
public class CompanyUserController {
	@Autowired
	private CompanyUserService companyUserService;
	private CompanyService companyService;
	
	@RequestMapping("/companyUserList.do")
	public ModelAndView companyUserList(ModelAndView mav) {
		List<CompanyUserVo> list = companyUserService.getSelectList();
		mav.addObject("list", list);
		mav.setViewName("/companyuser/companyUserList");
		return mav;
	}
	
	@RequestMapping("/companyUserInsertForm.do")
	
	public ModelAndView companyUserInsertForm(ModelAndView mav) {
		mav.setViewName("/companyuser/companyUserInsert");
		return mav;
	}
	
	
	@RequestMapping("/companyUserInsert.do")
	 public ModelAndView companyUserInsert(CompanyUserVo vo, ModelAndView mav) {
	 
	  companyUserService.companyUserInsert(vo);
	  
	  mav.setViewName("/main/main"); return mav; 
	  }
	 
	
}
