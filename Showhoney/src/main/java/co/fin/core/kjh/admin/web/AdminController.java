package co.fin.core.kjh.admin.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import co.fin.core.kjh.admin.vo.AdminService;
import co.fin.core.kjh.admin.vo.AdminVo;

@Controller
public class AdminController {
	@Autowired
	private AdminService adminService;

	@RequestMapping("/adminManage.do")

	public ModelAndView adminManage(ModelAndView mav) {
		List<AdminVo> list = adminService.getSelectWaitingList();
		mav.addObject("list", list);
		mav.setViewName("/admin/adminManage");
		return mav;
	}

	@RequestMapping("/adminManageList.do")

	public ModelAndView adminCompanyList(ModelAndView mav) {
		mav.setViewName("/admin/adminCompanyList");
		return mav;
	}

	@RequestMapping("/adminPresentation.do")

	public ModelAndView adminPresentation(ModelAndView mav) {
		mav.setViewName("/admin/adminPresentationList");
		return mav;
	}
	
	@RequestMapping("/adminUpdate.do")
	public ModelAndView adminUpdate(AdminVo vo, ModelAndView mav) {
		adminService.adminUpdate(vo);
		mav.setViewName("/main/main");
		return mav;
	}
	
	@RequestMapping("/adminDelete.do")
	public ModelAndView adminDelete(AdminVo vo, ModelAndView mav) {
		adminService.adminDelete(vo);
		mav.setViewName("/main/main");
		return mav;
	}
	
}
