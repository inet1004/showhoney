package co.fin.core.nhu.ticket.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.servlet.ModelAndView;

import co.fin.core.nhu.ticket.vo.TicketService;
import co.fin.core.nhu.ticket.vo.TicketVo;

@Controller
public class TicketController {
	@Autowired
	private TicketService ticketService;
	
	@RequestMapping(value = "/ticketList.do")
	public ModelAndView exhibitionList(ModelAndView mav) {
		List<TicketVo> tlist = ticketService.getSelectTicketList();
		mav.addObject("tlist", tlist);
		mav.setViewName("/ticket/ticket_sample");
		return mav;
	}
	
	@RequestMapping("/ticketPayment.do")
	
	public ModelAndView ticketPayment(ModelAndView mav) {
		mav.setViewName("com/price/payment");
		return mav;
	}
}
