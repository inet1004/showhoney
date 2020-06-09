package co.fin.core.kjh.customer.web;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
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
	
	@RequestMapping("/customerInsertForm.do")
	
	public ModelAndView customerInsertForm(ModelAndView mav) {
		mav.setViewName("/customer/customerInsert");
		return mav;
	}
	
	@RequestMapping("/customerInsert.do")
	
	public ModelAndView customerInsert(CustomerVo vo, ModelAndView mav) {
		customerService.customerInsert(vo);
		
		mav.setViewName("/main/main");
		return mav;
	}
	
}
