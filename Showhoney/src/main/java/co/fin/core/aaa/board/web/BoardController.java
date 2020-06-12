package co.fin.core.aaa.board.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import co.fin.core.aaa.board.vo.BoardService;

@Controller
public class BoardController {
	@Autowired
	private BoardService boardService;
	
	@RequestMapping("/info.do")
	public String info(Model model) {
		return "no/main/info";
	}
	
	@RequestMapping(value="layout.do", method = RequestMethod.GET)
	public String layout(Model model) {
		return "layout";
	}
	
	
	@RequestMapping("/companyJoin.do")
	public String companyJoin(Model model) {
		return "no/join/companyJoin";
	}
	
	@RequestMapping("/customerJoin.do")
	public String customerJoin(Model model) {
		return "no/join/customerJoin";
	}
	
	@RequestMapping("/joinType.do")
	public String joinType(Model model) {
		return "no/join/joinType";
	}
	
	
}
