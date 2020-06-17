package co.fin.core.psg.login.serviceImpl;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import co.fin.core.psg.login.vo.LoginComVo;
import co.fin.core.psg.login.vo.LoginService;
import co.fin.core.psg.login.vo.LoginVo;

@Service
public class LoginServiceImpl implements LoginService {

	@Autowired
	LoginMapper dao;

	@Override
	public boolean loginCheck(LoginVo vo, HttpSession session) {
		int result = dao.loginCheck(vo);
		if (result == 1) {	//true 일경우 세션 등록
			//세션 변수 등록
			session.setAttribute("customer_id",vo.getCustomer_id());
			return true;
		}
		
		return false;
	}
	
	
	@Override
	public boolean loginCheckCom(LoginComVo cvo, HttpSession session) {
		int result = dao.loginCheckCom(cvo);
		if (result == 1) {	//true 일경우 세션 등록
			//세션 변수 등록
			session.setAttribute("company_user_id",cvo.getCompany_user_id());
			return true;
		}
		
		return false;
	}
	

	@Override
	public void logout(HttpSession session) {
		System.out.println("===> 로그아웃 기능 처리");
		session.invalidate();

	}



}
