package co.fin.core.psg.login.vo;

import java.util.Date;


import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;

import co.fin.core.kjh.customer.vo.CustomerVo;

@Service
public interface LoginService {

	//고객 로그인 체크
	public boolean loginCheck(LoginVo vo,HttpSession session);
	
	//기업 로그인 체크
	public boolean loginCheckCom(LoginComVo cvo,HttpSession session);
	
	//로그 아웃
	public void logout(HttpSession session);
	
	
}
