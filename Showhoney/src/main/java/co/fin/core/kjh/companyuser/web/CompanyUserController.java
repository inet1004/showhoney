package co.fin.core.kjh.companyuser.web;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import co.fin.core.kjh.company.vo.CompanyService;
import co.fin.core.kjh.companyuser.vo.CompanyUserService;
import co.fin.core.kjh.companyuser.vo.CompanyUserVo;
import co.fin.core.kjh.customer.vo.CustomerVo;
import co.fin.core.kjh.companyuser.vo.CompanyUserFileRenamePolicy;

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
	public ModelAndView companyUserInsert(HttpServletRequest request, CompanyUserVo vo, ModelAndView mav)
			throws IOException {

		MultipartFile uploadFile = vo.getUploadFile();
		String path = request.getSession().getServletContext().getRealPath("/resources/FileUpload/companyUserProfile");
		System.out.println(path);

		if (!uploadFile.isEmpty()) {
			String fileName = uploadFile.getOriginalFilename();
			File file = new File(path, fileName);
			file = new CompanyUserFileRenamePolicy().rename(file);
			uploadFile.transferTo(file);
			vo.setCompany_profile(file.getName());
		} else {
			vo.setCompany_profile("");
		}

		companyUserService.companyInsert(vo);
		mav.setViewName("no/main/info");

		return mav;
	}

	@RequestMapping(value = "/companyUser/idCheck.do", method = RequestMethod.GET)
	@ResponseBody
	public int idCheck(CompanyUserVo vo) {
		CompanyUserVo campanyUservo = companyUserService.getSelect(vo);
		return campanyUservo == null ? 0 : 1;
	}
	
	@RequestMapping("/companyUserInfo.do")
	public String companyUserInfo(CompanyUserVo vo, Model model, HttpServletRequest request) {
		
		String company_user_id = (String) request.getSession().getAttribute("company_user_id");
		vo.setCompany_user_id(company_user_id);
		
		CompanyUserVo comuservo = companyUserService.companyUserSelect(vo);
		model.addAttribute("vo", comuservo);
		
		return "com/companyuser/companyUserInfo";
		
	}
	
	@RequestMapping("/companyProfileUpdate.do")
	public ModelAndView companyProfileUpdate(CompanyUserVo vo, ModelAndView mav, HttpServletRequest request) throws IllegalStateException, IOException {
		
		companyUserService.companyUserUpdate(vo, request);
		mav.setViewName("redirect:/companyUserInfo.do?company_user_id="+vo.getCompany_user_id());
		return mav;
		
	}

	@RequestMapping("/companyPwUpdate.do")
	public ModelAndView companyPwUpdate(CompanyUserVo vo, ModelAndView mav) {
		
		companyUserService.companyUserPwUpdate(vo);
		mav.setViewName("redirect:/companyUserInfo.do?company_user_id="+vo.getCompany_user_id());
		return mav;
		
	}
	
	@RequestMapping("/companyUpdate.do")
	public ModelAndView companyUpdate(CompanyUserVo vo, ModelAndView mav) {
		
		companyUserService.companyUpdate(vo);
		mav.setViewName("redirect:/companyUserInfo.do?company_user_id="+vo.getCompany_user_id());
		return mav;
		
	}

}
