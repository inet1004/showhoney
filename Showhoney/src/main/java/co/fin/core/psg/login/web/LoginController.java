package co.fin.core.psg.login.web;

import javax.servlet.http.HttpSession;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import co.fin.core.psg.login.vo.LoginService;
import co.fin.core.psg.login.vo.LoginVo;

@Controller
@SessionAttributes("login")
public class LoginController {

	@Autowired
	private LoginService loginService;
	
	@RequestMapping("/login.do")
	public String login() {
		return "/login/login";
	}
	
	//로그인 처리
	@RequestMapping(value="/loginCheck.do")
	public ModelAndView loginCheck(@ModelAttribute LoginVo vo,HttpSession session) {
		
		boolean result = loginService.loginCheck(vo, session);
		ModelAndView mav = new ModelAndView();
		
		if(result) {
			mav.setViewName("redirect:main.do");
			mav.addObject("msg","성공");
		}else {
			mav.setViewName("/login/login");
			mav.addObject("msg","실패");
		}
		
		return mav;
	}
	
	//로그아웃 처리
	@RequestMapping("logout.do")
	public ModelAndView logout(HttpSession session) {
		
		loginService.logout(session);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("redirect:main.do");
		mav.addObject("msg", "logout");
		
		return mav;
	}

}
