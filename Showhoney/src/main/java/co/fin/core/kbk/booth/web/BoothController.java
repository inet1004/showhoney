package co.fin.core.kbk.booth.web;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import co.fin.core.kbk.booth.vo.BoothService;
import co.fin.core.kbk.booth.vo.BoothVo;
import co.fin.core.kbk.booth.vo.ProductVo;
import co.fin.core.kjh.companyuser.vo.CompanyUserVo;

@Controller
public class BoothController {
	
	@Autowired
	private BoothService boothService;
	
	@RequestMapping(value = "/boothList.do")
	public ModelAndView loginCheck(BoothVo vo, ModelAndView mav) {
		List<BoothVo> list = boothService.bgetSelectBoothList(vo);
		mav.addObject("list", list);
		mav.setViewName("cus/booth/boothList");
		
		return mav;
	}
	
	@RequestMapping("/boothForm.do")
	public String boothForm(Model model) {
		
		return "com/companyuser/boothForm";
	}
	
	@RequestMapping("/boothInsert.do")
	public ModelAndView boothInsert(HttpServletRequest request, BoothVo bvo, ProductVo pvo,  ModelAndView mav, CompanyUserVo cvo) throws IOException {
			
		boothService.boothInsert(bvo, pvo, request);
		mav.setViewName("redirect:/boothSelect.do?booth_no="+bvo.getBooth_no());
		return mav;
	}
	
	@RequestMapping("/boothSelect.do")
	public String boothSelect(BoothVo vo, ProductVo pvo, Model model) {
		
		List<BoothVo> list = boothService.bgetSelectBoothList(vo);
		
		model.addAttribute("productlist", boothService.getSelectList(pvo));
		model.addAttribute("list", list);
		return "com/companyuser/boothSelect";
	}
	
	@RequestMapping("/boothModifyForm.do")
	public String boothModifyForm(BoothVo vo, ProductVo pvo, Model model ) {
		
		List<BoothVo> list = boothService.bgetSelectBoothList(vo);
		
		model.addAttribute("productlist", boothService.getSelectList(pvo));
		model.addAttribute("list", list);
		return "com/companyuser/boothModifyForm";
	}
	
	@RequestMapping("/boothUpdate.do")
	public ModelAndView boothUpdate(BoothVo bvo, ModelAndView mav) throws IOException {
			
		boothService.boothUpdate(bvo);
		mav.setViewName("redirect:/boothModifyForm.do?booth_no="+bvo.getBooth_no());
		return mav;
	}
	
	@RequestMapping("/productUpdate.do")
	public ModelAndView productUpdate(ProductVo pvo, ModelAndView mav) throws IOException {
			
		boothService.productUpdate(pvo);
		mav.setViewName("redirect:/boothModifyForm.do?booth_no="+pvo.getBooth_no());
		return mav;
	}
	
	@RequestMapping("/customerBoothList.do")
	public ModelAndView customerBoothList(BoothVo vo, HttpServletRequest request, HttpServletResponse response, ModelAndView mav) throws Exception {
		
		int n = 0;
		
		String customerid = (String) request.getSession().getAttribute("customer_id");
		int exhibitionno = Integer.parseInt(request.getParameter("exhibition_no"));
		vo.setCustomer_id(customerid);
		vo.setExhibition_no(exhibitionno);
		
		n = boothService.ticketCheck(vo);
		if(n==0) {
			PrintWriter writer = response.getWriter();
			response.setContentType("text/html;charset=UTF-8");
			writer.println("<script>alert('티켓 구매 후 입장 가능합니다!! 구매 페이지로 이동합니다.'); location.href='ticketList.do';</script>");
			
		}else {
			List<BoothVo> list = boothService.getSelectCustomerBoothList(vo);
			mav.addObject("list", list);
			mav.setViewName("cus/booth/customerBoothList");
			
		}		
		
		return mav;
	}
	
	@RequestMapping("/customerBoothSelect.do")
	public String customerBoothSelect(BoothVo vo, ProductVo pvo, Model model) {
		List<BoothVo> list = boothService.bgetSelectBoothList(vo);
		
		model.addAttribute("productlist", boothService.getSelectList(pvo));
		model.addAttribute("list", list);
		return "cus/booth/customerBoothSelect";
	}
}
