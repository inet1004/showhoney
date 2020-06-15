package co.fin.core.kjh.companyuser.web;

import java.io.File;
import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import co.fin.core.kjh.company.vo.CompanyService;
import co.fin.core.kjh.companyuser.vo.CompanyUserService;
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

	@RequestMapping("/companyuserJoin.do")

	public ModelAndView companyJoin(ModelAndView mav) {
		mav.setViewName("no/companyuser/companyuserJoin");
		return mav;
	}

	@RequestMapping("/companyUserInsert.do")
	public ModelAndView companyUserInsert(CompanyUserVo vo, ModelAndView mav) throws IOException {
		
		MultipartFile uploadFile = vo.getUploadFile();
		if(!uploadFile.isEmpty()) {
			String fileName = uploadFile.getOriginalFilename( );
			uploadFile.transferTo(new File("D:\\Dev\\git\\showhoney\\Showhoney\\src\\main\\webapp\\upload\\companyProfile" + fileName));
			vo.setCompany_profile(fileName);

		}
		
		companyUserService.companyInsert(vo);
	

		mav.setViewName("no/main/info");
		return mav;
	}

}
