package co.fin.core.psg.login.serviceImpl;

import javax.servlet.http.HttpSession;

import co.fin.core.psg.login.vo.LoginComVo;
import co.fin.core.psg.login.vo.LoginVo;

public interface LoginMapper {

	public int loginCheck(LoginVo vo);  // 고객유저, 원래 안 넣어도 자동으로 처리해 주지만 안 될 경우에 이렇게 넣어 주어야 함.

	public int loginCheckCom(LoginComVo cvo);  // 기업유저
	
	
	//고객 로그인 pw 값가져오기(추가)
	public String getCustomerPw(LoginVo vo, HttpSession session);
	//기업 로그인 pw 값가져오기(추가)
	public String getCompanyUserPw(LoginComVo cvo, HttpSession session);
	
	
}
