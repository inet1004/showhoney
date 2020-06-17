package co.fin.core.aaa.board.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import co.fin.core.aaa.board.vo.BoardService;
import co.fin.core.aaa.board.vo.BoardVo;

@Controller
public class BoardController {
	@Autowired
	private BoardService boardService;
	
	@RequestMapping("/info.do")
	public String info(Model model) {
		return "no/main/info";
	}
	
	@RequestMapping("/bothLogin.do")
	public String bothLogin(Model model) {
		return "no/login/bothLogin";
	}
	
	@RequestMapping("/joinType.do")
	public String joinType(Model model) {
		return "no/join/joinType";
	}
	
	@RequestMapping("/doing.do")
	public String doing(Model model) {
		return "com/main/main";
	}
	
	@RequestMapping("/companyBooth.do")
	public String companyBooth(Model model) {
		return "com/companyuser/companyBooth";
	}
	
	
	
	@RequestMapping("/boardList.do")

	/*	public String boardList(Model model) {
		List<BoardVo> list = boardService.getSelectList();
		model.addAttribute("list", list);
		String viewPage=null; 페이지 분기 필요할때
		if(dkdkdk) viewPage="a"
		else viewPage="b"
		return viewPage;
		
		return "board/boardList"; //jsp 페이지
	}
*/
	public ModelAndView boardList(ModelAndView mav) {
		List<BoardVo> list = boardService.getSelectList();
		mav.addObject("list", list);
		mav.setViewName("/board/boardList");
		return mav;
	}

}
