package co.fin.core.kjh.likebooth.web;



import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import co.fin.core.kbk.booth.vo.BoothVo;
import co.fin.core.kjh.likebooth.vo.LikeBoothService;
import co.fin.core.kjh.likebooth.vo.LikeBoothVo;

@Controller
public class LikeBoothController {
	
	@Autowired
	private LikeBoothService likeBoothService;
	
	
	@ResponseBody
	@RequestMapping("/likeBooth.do")
	public int likeBooth(Model model, HttpServletRequest request,LikeBoothVo vo) throws Exception {
			int num = 0;
			int num2 = 0;
		String customerid = (String) request.getSession().getAttribute("customer_id");
			int boothno = Integer.parseInt(request.getParameter("booth_no"));
			vo.setCustomer_id(customerid);
			vo.setBooth_no(boothno);
			num = likeBoothService.likeBoothInsert(vo);
			List<LikeBoothVo> list = likeBoothService.getSelectLikeBoothList(vo);
			model.addAttribute("list", list);
			if(num==10) {
				num2 = 10;
			}else if(num==20){
				num2 = 20;
			}return num2;
				
			
			
			
	}
	
	@RequestMapping("/likeCheck.do")
	public void likeCheck(Model model, HttpServletRequest request,LikeBoothVo vo) throws Exception {
			String customerid = (String) request.getSession().getAttribute("customer_id");
			int boothno = Integer.parseInt(request.getParameter("booth_no"));
			vo.setCustomer_id(customerid);
			vo.setBooth_no(boothno);
			likeBoothService.likeCheck(vo);
	}
	
	
	@RequestMapping("/customerLikeBoothList.do")
	public ModelAndView customerLikeBoothList(LikeBoothVo vo, ModelAndView mav, HttpServletRequest request) {
		String customerid = (String) request.getSession().getAttribute("customer_id");
		int exhibitionno = Integer.parseInt(request.getParameter("exhibition_no"));
		vo.setCustomer_id(customerid);
		vo.setExhibition_no(exhibitionno);
		List<LikeBoothVo> list = likeBoothService.getSelectLikeBoothList(vo);
		mav.addObject("list", list);
		mav.setViewName("cus/booth/customerLikeBoothList");
		return mav;
	}
	
	
	
	/*
	 * @RequestMapping("/customerBoothList.do") public ModelAndView
	 * customerBoothList(BoothVo vo, ModelAndView mav) { List<BoothVo> list =
	 * boothService.getSelectCustomerBoothList(vo); mav.addObject("list", list);
	 * mav.setViewName("cus/booth/customerBoothList");
	 * 
	 * return mav; }
	 */
}
