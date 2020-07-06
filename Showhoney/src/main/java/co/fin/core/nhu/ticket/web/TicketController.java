package co.fin.core.nhu.ticket.web;

import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.servlet.ModelAndView;

import co.fin.core.kbk.booth.vo.BoothVo;
import co.fin.core.kjh.admin.vo.ExhibitionVo;
import co.fin.core.nhu.ticket.vo.TicketService;
import co.fin.core.nhu.ticket.vo.TicketVo;

@Controller
public class TicketController {
	@Autowired
	private TicketService ticketService;
	
	@RequestMapping(value = "/ticketList.do")
	public ModelAndView exhibitionList(ModelAndView mav, HttpServletRequest request, HttpServletResponse response) throws Exception{
		PrintWriter writer = response.getWriter();
		String customerid = (String) request.getSession().getAttribute("customer_id");
		String companyuserid = (String) request.getSession().getAttribute("company_user_id");
		if(companyuserid!= null) {
			response.setContentType("text/html;charset=UTF-8");
			writer.println("<script>alert('기업회원은 티켓을 구매할 수 없습니다.'); location.href='exhibitionList.do';</script>");
			return null;
		}else if(customerid!= null) {
			if(customerid.equals("admin")) {
				List<TicketVo> tlist = ticketService.getSelectTicketList();
				mav.addObject("tlist", tlist);
				mav.setViewName("adm/ticket/ticket_sample");
				return mav;
			}
			List<TicketVo> tlist = ticketService.getSelectTicketList();
			mav.addObject("tlist", tlist);
			mav.setViewName("cus/ticket/ticket_sample");
			return mav;
		}	
		return mav;
	}
	
	@RequestMapping("/ticketPayment.do")
	
	public ModelAndView ticketPayment(ModelAndView mav) {
		mav.setViewName("com/price/payment");
		return mav;
	}
	
	@RequestMapping("/ticketInsertForm.do")
	
	public ModelAndView ticketInsertFrom(TicketVo vo, ModelAndView mav) {
		mav.addObject("admin", ticketService.getSelect(vo));
		mav.setViewName("adm/ticket/ticketInsert");
		return mav;
	}
	
	@RequestMapping("/ticketInsert.do")
	public ModelAndView ExhibitionInsert(TicketVo vo, ModelAndView mav) {
		ticketService.tickekInsert(vo);
		mav.setViewName("redirect:adminExhibitionManage.do");
		return mav;
	}
}
