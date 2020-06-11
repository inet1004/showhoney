package co.fin.core.psg.login.web;

import javax.servlet.http.HttpSession;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import co.fin.core.psg.login.vo.LoginComVo;
import co.fin.core.psg.login.vo.LoginService;
import co.fin.core.psg.login.vo.LoginVo;

@Controller
@SessionAttributes("login")
public class LoginController {

	@Autowired
	private LoginService loginService;
	
	//고객로그인
	@RequestMapping("/login.do")
	public String login() {
		return "/login/login";
	}
	
	//기업로그인
	@RequestMapping("/loginCom.do")
	public String loginCom() {
		return "/login/loginCom";
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
	
	

	//로그인 처리
	@RequestMapping(value="/loginCheckCom.do")
	public ModelAndView loginCheckCom(@ModelAttribute LoginComVo cvo,HttpSession session) {
		
		boolean result = loginService.loginCheckCom(cvo, session);
		ModelAndView mav = new ModelAndView();
		
		if(result) {
			mav.setViewName("redirect:main.do");
			mav.addObject("msgCom","성공");
		}else {
			mav.setViewName("/login/loginCom");
			mav.addObject("msgCom","실패");
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
		mav.addObject("msgCom", "logout");  //////추가
		
		return mav;
	}

}
