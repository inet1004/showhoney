package co.fin.core.nhu.payment.web;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import co.fin.core.nhu.exhibition.vo.Exhibition2Vo;
import co.fin.core.nhu.payment.vo.PayService;
import co.fin.core.nhu.payment.vo.PayVo;


@Controller
public class PayController {

	@Autowired
	public PayService payService;
	public PayVo payVo;
	
	
	@RequestMapping("pay.do")
	public String pay(HttpSession session, HttpServletRequest request) {
			
		return "com/price/import";
	}
	
	@RequestMapping(value="PaymentResult.do" , method=RequestMethod.POST)
	@ResponseBody
	public PayVo PaymentResult(PayVo payVo) throws Exception {
		System.out.println(payVo);
		payService.payInsert(payVo);
		
		return payVo;
	}
	
	
	@RequestMapping("success.do")
	public String success () {		
		return "redirect:exhibitionList.do";
	}
	
	
	@RequestMapping(value = "/customerPaymentDetails.do")
	public ModelAndView customerPaymentDetails(PayVo vo, ModelAndView mav, HttpServletRequest request) {
		
		String customerid = (String) request.getSession().getAttribute("customer_id");
		vo.setCustomer_id(customerid);
		
		List<PayVo> pdslist = payService.getSelectPayList(vo);
		
		mav.addObject("pdslist", pdslist);
		mav.setViewName("cus/payment_details/customerPaymentDetails");
		return mav;
	}
}
