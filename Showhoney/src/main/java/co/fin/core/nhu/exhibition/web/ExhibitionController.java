package co.fin.core.nhu.exhibition.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.servlet.ModelAndView;

import co.fin.core.nhu.exhibition.vo.Exhibition2Vo;
import co.fin.core.nhu.exhibition.vo.ExhibitionService;

@Controller
public class ExhibitionController {
	@Autowired
	private ExhibitionService exhibitionService;

	@RequestMapping(value = "/exhibitionList.do")
	public ModelAndView exhibitionList(ModelAndView mav, HttpServletRequest req) {
		List<Exhibition2Vo> list = exhibitionService.getSelectExhibitionList();
		mav.addObject("list", list);

		HttpSession session = req.getSession();
		String name = (String) session.getAttribute("customer_id");
		if (name != null) {
			if (vo.getCustomer_id() != null) {
				mav.setViewName("cus/exhibition/exhibitionList");
			} else {
				mav.setViewName("com/exhibition/exhibitionList");
			}
			return mav;
		}
	}

}
