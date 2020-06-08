package co.micol.prj.board.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import co.micol.prj.board.vo.BoardService;
import co.micol.prj.board.vo.BoardVo;

@Controller
public class BoardController {
	@Autowired
	private BoardService boardService;
	
	@RequestMapping("/main.do")
	public String main(Model model) {
		return "/main/main";
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
		mav.setViewName("board/boardList");
		return mav;
	}
	
	@RequestMapping(value="layout.do", method = RequestMethod.GET)
	public String layout(Model model) {
		return "layout";
	}
	
}
