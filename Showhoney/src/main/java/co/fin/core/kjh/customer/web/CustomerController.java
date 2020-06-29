package co.fin.core.kjh.customer.web;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import co.fin.core.kjh.customer.vo.CustomerService;
import co.fin.core.kjh.customer.vo.CustomerVo;

@Controller
public class CustomerController {
	@Autowired
	private CustomerService customerService;
	
	@RequestMapping("/customerList.do")
	public ModelAndView customerList(ModelAndView mav) {
		List<CustomerVo> list = customerService.getSelectList();
		mav.addObject("list",list);
		mav.setViewName("/customer/customerList");
		return mav;
	}
	
	@RequestMapping("/customerJoin.do")
	
	public ModelAndView customerJoin(ModelAndView mav) {
		mav.setViewName("no/customer/customerJoin");
		return mav;
	}
		

	@RequestMapping("/customerInsert.do")
	public ModelAndView customerInsert(HttpServletRequest request, CustomerVo vo, ModelAndView mav) throws IOException {      
	      
	       customerService.customerInsert(vo, request);
	       mav.setViewName("no/main/info");
	       
	      return mav;
	   }
	
	@RequestMapping(value="/customer/idCheck.do", method = RequestMethod.GET)
	@ResponseBody
	public int idCheck(CustomerVo vo) {
		CustomerVo customer = customerService.getSelect(vo);
		return customer == null ? 0 : 1 ;
	}
	
	@RequestMapping("/customerUserInfo.do")
	public String customerUserInfo(CustomerVo vo, Model model) {
		
		
		vo.setCustomer_id("bobo");
		
		CustomerVo cvo = customerService.getSelect(vo);
		model.addAttribute("vo", cvo);
		
		return "cus/customer/customerUserInfo";
	}
}
