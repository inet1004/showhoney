package co.fin.core.nhu.ask.web;

import java.util.List;

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
	public ModelAndView askList(ModelAndView mav) {
		List<AskVo> alist = askService.getSelectAskList();
		mav.addObject("alist", alist);
		mav.setViewName("cus/ask/ask");
		return mav;
	}
	
		
	@RequestMapping(value = "/GoAskDetail.do")
	public ModelAndView GoAskDetail(ModelAndView mav, AskVo vo) {
		mav.addObject("Dalist", askService.getSelect(vo));
		mav.setViewName("cus/ask/askDetail");
		return mav; 
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
	
	public ModelAndView adminSendMail(ModelAndView mav) {
		mav.setViewName("adm/ask/adminMailSend");
		return mav;
	}
}
