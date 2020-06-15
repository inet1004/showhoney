package co.fin.core.kjh.customer.web;

import java.io.File;
import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
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
	
	public ModelAndView customerInsert(CustomerVo vo, ModelAndView mav) throws IOException { 
		
		
		
		MultipartFile uploadFile = vo.getUploadFile();
		if(!uploadFile.isEmpty()) {
			String fileName = uploadFile.getOriginalFilename( );
			uploadFile.transferTo(new File("D:\\Dev\\git\\showhoney\\Showhoney\\src\\main\\webapp\\upload\\customerProfile" + fileName));
			vo.setCustomer_profile(fileName);
		}
		customerService.customerInsert(vo);
		
		mav.setViewName("no/main/info");
		return mav;
	}
	
	
}
