package co.fin.core.kjh.customer.web;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
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
	public String customerUserInfo(CustomerVo vo, Model model, HttpServletRequest request) {
		
		String customer_id = (String) request.getSession().getAttribute("customer_id");
		vo.setCustomer_id(customer_id);
		
		CustomerVo cvo = customerService.getSelect(vo);
		model.addAttribute("vo", cvo);
		
		if(customer_id.equals("admin")){
			return "adm/customer/customerUserInfo";
		}else{
			
			return "cus/customer/customerUserInfo";
		}
	}
	
	@RequestMapping("/customerUpdate.do")
	public ModelAndView customerUpdate(CustomerVo vo, HttpServletRequest request, ModelAndView mav) throws IllegalStateException, IOException {
		
		customerService.customerUpdate(vo, request);
		mav.setViewName("redirect:/customerUserInfo.do?customer_id="+vo.getCustomer_id());
		return mav;
		
	}
	
	@RequestMapping("/customerPwUpdate.do")
	public ModelAndView customerPwUpdate(CustomerVo vo, ModelAndView mav) throws IllegalStateException, IOException {
		
		customerService.customerPwUpdate(vo);
		mav.setViewName("redirect:/customerUserInfo.do?customer_id="+vo.getCustomer_id());
		return mav;
		
	}
	
	@RequestMapping("/customerDelete.do")
	public ModelAndView customerDelete(CustomerVo vo, ModelAndView mav, HttpServletRequest request) {
		
		String customer_id = (String) request.getSession().getAttribute("customer_id");
		vo.setCustomer_id(customer_id);
		
		customerService.customerDelete(vo, request);
		mav.setViewName("redirect:logout.do");
		return mav;
		
	}
}
