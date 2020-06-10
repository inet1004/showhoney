package co.fin.core.psg.login.vo;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;

@Service
public interface LoginService {

	//로그인 체크
	public boolean loginCheck(LoginVo vo,HttpSession session);
	
	//로그 아웃
	public void logout(HttpSession session);


}
