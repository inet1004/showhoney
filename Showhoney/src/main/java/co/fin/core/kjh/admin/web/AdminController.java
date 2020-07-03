package co.fin.core.kjh.admin.web;

import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import co.fin.core.kjh.admin.vo.AdminService;
import co.fin.core.kjh.admin.vo.AdminVo;
import co.fin.core.kjh.admin.vo.ExhibitionVo;

@Controller
public class AdminController {
	@Autowired
	private AdminService adminService;
	
	@RequestMapping("/adminManage.do")

	public ModelAndView adminManage(ModelAndView mav, HttpServletRequest request, HttpServletResponse response) throws Exception{
		PrintWriter writer = response.getWriter();
		String customerid = (String) request.getSession().getAttribute("customer_id");
		if(customerid.equals("admin")){
			List<AdminVo> list = adminService.getSelectWaitingList();
			mav.addObject("list", list);
			mav.setViewName("adm/admin/adminManage");
			return mav;
		}
		response.setContentType("text/html;charset=UTF-8");
		writer.println("<script>alert('잘못된 접근입니다.'); location.href='exhibitionList.do';</script>");
		return null;
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
		mav.setViewName("redirect:adminManage.do");
		return mav;
	}
	
	@RequestMapping("/adminDelete.do")
	public ModelAndView adminDelete(AdminVo vo, ModelAndView mav) {
		adminService.adminDelete(vo);
		mav.setViewName("redirect:adminManage.do");
		return mav;
	}
	
	@RequestMapping("/ExhibitionDelete.do")
	public ModelAndView ExhibitionDelete(ExhibitionVo exvo, ModelAndView mav) {
		adminService.ExhibitionDelete(exvo);
		mav.setViewName("redirect:adminExhibitionManage.do");
		return mav;
	}
	
	
	@RequestMapping("/adminExhibitionManage.do")
	public ModelAndView adminExhibitionManage(ModelAndView mav, HttpServletRequest request, HttpServletResponse response) throws Exception{
		PrintWriter writer = response.getWriter();
		String customerid = (String) request.getSession().getAttribute("customer_id");
		if(customerid.equals("admin")) {
			List<ExhibitionVo> elist = adminService.getSelectExhibitionList();
			mav.addObject("elist", elist);
			mav.setViewName("adm/admin/adminExhibitionManage");
			return mav;
		}
		
		response.setContentType("text/html;charset=UTF-8");
		writer.println("<script>alert('잘못된 접근입니다.'); location.href='exhibitionList.do';</script>");
		return null;
		
		
	}	
	
	
	@RequestMapping("/ExhibitionInsert.do")
	public ModelAndView ExhibitionInsert(ExhibitionVo exvo, ModelAndView mav) {
		adminService.ExhibitionInsert(exvo);
		
		mav.setViewName("redirect:adminExhibitionManage.do");
		return mav;
	}
	
	@RequestMapping("/ExhibitionInsertForm.do")
	public ModelAndView ExhibitionInsertForm(ExhibitionVo exvo, ModelAndView mav) {
		mav.setViewName("adm/exhibition/exhibitionInsert");
		return mav;
	}
	
	@RequestMapping("/CouponList.do")

	public ModelAndView CouponList(ModelAndView mav) {
		mav.setViewName("/coupon/couponList");
		return mav;
	}
	
	@RequestMapping("/viewExhibition.do")

	public ModelAndView viewExhibition(ModelAndView mav) {
		mav.setViewName("/exhibition/exhibitionList");
		return mav;
	}
	
	@RequestMapping("/like.do")

	public ModelAndView like(ModelAndView mav) {
		mav.setViewName("/like/like");
		return mav;
	}
	
}
