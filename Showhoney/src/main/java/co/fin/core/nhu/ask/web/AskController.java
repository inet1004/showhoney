package co.fin.core.nhu.ask.web;

import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.servlet.ModelAndView;

import co.fin.core.kjh.admin.vo.ExhibitionVo;
import co.fin.core.nhu.ask.vo.AskService;
import co.fin.core.nhu.ask.vo.AskVo;
import co.fin.core.nhu.ticket.vo.TicketService;
import co.fin.core.nhu.ticket.vo.TicketVo;

@Controller
public class AskController {
	@Autowired
	private AskService askService;
	
	@RequestMapping(value = "/ask.do")
	public ModelAndView askList(ModelAndView mav, HttpServletRequest request) {
		String customerid = (String) request.getSession().getAttribute("customer_id");
		String companyuserid = (String) request.getSession().getAttribute("company_user_id");
		if(companyuserid!= null) {
			List<AskVo> alist = askService.getSelectAskList();
			mav.addObject("alist", alist);
			mav.setViewName("com/ask/ask");
			return mav;	
		}else if(customerid!= null) {
			if(customerid.equals("admin")) {
				List<AskVo> alist = askService.getSelectAskList();
				mav.addObject("alist", alist);
				mav.setViewName("adm/ask/ask");
				return mav;	
			}
			List<AskVo> alist = askService.getSelectAskList();
			mav.addObject("alist", alist);
			mav.setViewName("cus/ask/ask");
			return mav;	
		}
		return mav;
	
	}
	
		
	@RequestMapping(value = "/GoAskDetail.do")
	public ModelAndView GoAskDetail(ModelAndView mav, AskVo vo, HttpServletRequest request, HttpServletResponse response) throws Exception{
		PrintWriter writer = response.getWriter();
		String customerid = (String) request.getSession().getAttribute("customer_id");
		if(customerid.equals("admin")) {
			mav.addObject("Dalist", askService.getSelect(vo));
			mav.setViewName("cus/ask/askDetail");
			return mav;
		}
		response.setContentType("text/html;charset=UTF-8");
		writer.println("<script>alert('잘못된 접근입니다.'); location.href='exhibitionList.do';</script>");
		return null;
	}
	
	
	@RequestMapping("/AskWriteForm.do")
	
	public ModelAndView AskWriteForm(ModelAndView mav) {
		mav.setViewName("cus/ask/askWriteForm");
		return mav;
	}
	
	
	@RequestMapping("/InsertAskWrite.do")
	public ModelAndView InsertAskWrite(AskVo vo, ModelAndView mav) {
		askService.askInsert(vo);		
		mav.setViewName("redirect:ask.do");
		return mav;
	}
	
	
	@RequestMapping("/adminAsk.do")
	
	public ModelAndView adminAsk(ModelAndView mav) {
		List<AskVo> alist = askService.getSelectAskList();
		mav.addObject("alist", alist);
		mav.setViewName("adm/ask/adminAsk");
		return mav;
	}	
	
		
	@RequestMapping("/adminSendMail.do")
	
	public ModelAndView adminSendMail(AskVo vo, ModelAndView mav) {
		mav.addObject("ask", askService.getSelect(vo));
		mav.setViewName("adm/ask/adminMailSend");
		return mav;
	}
}
