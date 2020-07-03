package co.fin.core.kjh.pboard.web;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.servlet.ModelAndView;

import co.fin.core.kjh.admin.vo.ExhibitionVo;
import co.fin.core.kjh.pboard.vo.PboardService;
import co.fin.core.kjh.pboard.vo.PboardVo;
import co.fin.core.nhu.ticket.vo.TicketService;
import co.fin.core.nhu.ticket.vo.TicketVo;

@Controller
public class PboardController {
	@Autowired
	private PboardService pboardService;
	
	
	@RequestMapping(value = "/pboardList.do")
	public ModelAndView pboardList(ModelAndView mav) {
		List<PboardVo> list = pboardService.getSelectPboardList();
		mav.addObject("list", list);
		mav.setViewName("cus/pboard/pboardList");
		return mav;
	}
	
		
	@RequestMapping(value = "/pboardDetail.do")
	public ModelAndView pboardDetail(ModelAndView mav, PboardVo vo) {
		mav.addObject("pboard", pboardService.getSelectPboard(vo));
		mav.setViewName("cus/pboard/pboardDetail");
		return mav; 
	}
	
	
	@RequestMapping("/pboardInsertForm.do")
	
	public ModelAndView pboardWriteForm(ModelAndView mav,PboardVo vo, HttpServletRequest request) {
		String companyuserid = (String) request.getSession().getAttribute("company_user_id");
		vo.setCompany_user_id(companyuserid);
		mav.addObject("list", pboardService.getSelectBooth(vo));
		mav.setViewName("no/pboard/pboardInsertForm");
		return mav;
	}
	
	@RequestMapping("/pboardInsert.do")
	public ModelAndView pboardInsert(PboardVo vo, ModelAndView mav, HttpServletRequest request) throws Exception{
		String companyuserid = (String) request.getSession().getAttribute("company_user_id");
		vo.setCompany_user_id(companyuserid);
		pboardService.pboardInsert(vo);
		mav.setViewName("redirect:pboardList.do");
		return mav;
	}
	
	@RequestMapping("/pboardUpdate.do")
	public ModelAndView pboardUpdate(PboardVo vo, ModelAndView mav) {
		pboardService.pboardUpdate(vo);
		mav.setViewName("redirect:pboardDetail.do?p_no="+vo.getP_no());
		return mav;
	}
	
	@RequestMapping("/pboardDelete.do")
	public ModelAndView pboardDelete(PboardVo vo, ModelAndView mav) {
		pboardService.pboardDelete(vo);
		mav.setViewName("redirect:pboardList.do");
		return mav;
	}
	
}
