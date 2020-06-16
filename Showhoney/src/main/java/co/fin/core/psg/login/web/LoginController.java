package co.fin.core.psg.login.web;

import java.util.Date;


import javax.inject.Inject;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.social.google.connect.GoogleConnectionFactory;
import org.springframework.social.oauth2.GrantType;
import org.springframework.social.oauth2.OAuth2Operations;
import org.springframework.social.oauth2.OAuth2Parameters;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.util.WebUtils;


import co.fin.core.kjh.customer.vo.CustomerVo;
import co.fin.core.psg.login.vo.LoginComVo;
import co.fin.core.psg.login.vo.LoginService;
import co.fin.core.psg.login.vo.LoginVo;


// 추가// import org.apache.commons.lang3.StringUtils;
import org.apache.commons.lang. *;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

@Controller
@SessionAttributes("login")
public class LoginController {
	
	//추가
	private static final Logger logger = LoggerFactory.getLogger(LoginController.class);

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
//			mav.setViewName("redirect:main.do");
			mav.setViewName("/login/login");
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
