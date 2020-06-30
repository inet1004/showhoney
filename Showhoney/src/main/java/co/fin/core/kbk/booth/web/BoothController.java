package co.fin.core.kbk.booth.web;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import co.fin.core.kbk.booth.vo.BoothService;
import co.fin.core.kbk.booth.vo.BoothVo;
import co.fin.core.kbk.booth.vo.ProductVo;
import co.fin.core.kjh.companyuser.vo.CompanyUserService;
import co.fin.core.kjh.companyuser.vo.CompanyUserVo;
import co.fin.core.nhu.exhibition.vo.Exhibition2Vo;
import co.fin.core.nhu.exhibition.vo.ExhibitionService;

@Controller
public class BoothController {
	
	@Autowired
	private BoothService boothService;
	@Autowired
	private ExhibitionService exhibitionService;
	@Autowired
	private CompanyUserService companyUserService;
	
	@RequestMapping(value = "/boothList.do")
	public ModelAndView loginCheck(BoothVo vo, ModelAndView mav) {
		List<BoothVo> list = boothService.bgetSelectBoothList(vo);
		mav.addObject("list", list);
		mav.setViewName("cus/booth/boothList");
		
		return mav;
	}
	
	@RequestMapping("/boothForm.do")
	public String boothForm(Model model) {
		
		
		
		List<Exhibition2Vo> list = exhibitionService.getSelectExhibitionList();
		model.addAttribute("exhibitionlist", list);
		
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
		
		List<CompanyUserVo> clist = companyUserService.getSelectList();
		model.addAttribute("companyuserlist", clist);
		
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
	public ModelAndView boothUpdate(BoothVo bvo, ProductVo pvo, HttpServletRequest request, ModelAndView mav) throws IOException {
			
		boothService.boothUpdate(bvo, pvo, request);
		mav.setViewName("redirect:/boothModifyForm.do?booth_no="+bvo.getBooth_no());
		return mav;
	}
	
	@RequestMapping("/productUpdate.do")
	public ModelAndView productUpdate(BoothVo bvo, ProductVo pvo, HttpServletRequest request, ModelAndView mav) throws IOException {
			
		boothService.productUpdate(bvo, pvo, request);
		mav.setViewName("redirect:/boothModifyForm.do?booth_no="+pvo.getBooth_no());
		return mav;
	}
	
	@RequestMapping("/productdelete.do")
	public ModelAndView productDelete(ProductVo pvo, BoothVo bvo, HttpServletRequest request, ModelAndView mav) throws IOException{
			
		boothService.productDelete (pvo, bvo, request);
		mav.setViewName("redirect:/boothModifyForm.do?booth_no="+pvo.getBooth_no());
		return mav;
	}
	
	@RequestMapping("/boothdelete.do")
	public ModelAndView boothDelete(BoothVo bvo, ProductVo pvo, HttpServletRequest request, ModelAndView mav) throws IOException {
			
		boothService.boothDelete(bvo, pvo, request);
		mav.setViewName("redirect:/boothList.do");
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
			return null;
			
		}else {
			List<BoothVo> list = boothService.getSelectCustomerBoothList(vo);
			mav.addObject("list", list);
			mav.setViewName("cus/booth/customerBoothList");
			return mav;
			
		}		
		
	}
	
	@RequestMapping("/download.do")  
	public ModelAndView download(HttpServletRequest request, BoothVo vo, Model model)throws Exception{
		
		List<BoothVo> list = boothService.bgetSelectBoothList(vo);
		String bro_path = list.get(0).getBrochure_path();
		
		String downpath = request.getSession().getServletContext().getRealPath("/resources/FileUpload/brochure/" );
		File down = new File(downpath, bro_path);
		return new ModelAndView("download","downloadFile",down);
	}

	
	@RequestMapping("/customerBoothSelect.do")
	public String customerBoothSelect(BoothVo vo, ProductVo pvo, Model model) {
		List<BoothVo> list = boothService.bgetSelectBoothList(vo);
		
		model.addAttribute("productlist", boothService.getSelectList(pvo));
		model.addAttribute("list", list);
		return "cus/booth/customerBoothSelect";
	}
}
