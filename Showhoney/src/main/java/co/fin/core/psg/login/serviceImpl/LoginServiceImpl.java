package co.fin.core.psg.login.serviceImpl;

import javax.servlet.http.HttpSession;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import co.fin.core.kjh.company.serviceImpl.CompanyMapper;
import co.fin.core.kjh.company.vo.CompanyService;
import co.fin.core.kjh.companyuser.serviceImpl.CompanyUserMapper;
import co.fin.core.kjh.companyuser.vo.CompanyUserVo;
import co.fin.core.psg.login.vo.LoginComVo;
import co.fin.core.psg.login.vo.LoginService;
import co.fin.core.psg.login.vo.LoginVo;

@Service
public class LoginServiceImpl implements LoginService {

	@Autowired
	LoginMapper dao;

	@Autowired
	LoginService loginService;

	@Autowired
	LoginMapper loginMapper;

	@Autowired
	BCryptPasswordEncoder bCryptPasswordEncoder;
	
	@Autowired
	CompanyUserMapper companyUserMapper;
	
	
	@Override
	public boolean loginCheck(LoginVo vo, HttpSession session) {

		// public void regist(UserVO vo) throws Exception{
		// String encPassword = passwordEncoder.encode(vo.getCustomer_pw());
		// vo.setCustomer_pw(encPassword);

		String pw = loginMapper.getCustomerPw(vo);  //session은 넣을 필요 없음
		boolean result = bCryptPasswordEncoder.matches(vo.getCustomer_pw(), pw);

		// int result = dao.loginCheck(vo);
		// if (result == 1) { //true 일경우 세션 등록
		if (result) { // true 일경우 세션 등록 //세션 변수 등록
			session.setAttribute("customer_id", vo.getCustomer_id());
			return true;
		}

		return false;
	}

	@Override
	public boolean loginCheckCom(LoginComVo cvo, HttpSession session) {
//		int result = dao.loginCheckCom(cvo);
		String pw = loginMapper.getCompanyUserPw(cvo);  //session은 넣을 필요 없음
		boolean result = bCryptPasswordEncoder.matches(cvo.getCompany_user_pw(), pw);
		
		if (result) { // true 일경우 세션 등록
			// 세션 변수 등록
			session.setAttribute("company_user_id", cvo.getCompany_user_id());
			
			CompanyUserVo companyUserVo = new CompanyUserVo();			
			companyUserVo.setCompany_user_id(cvo.getCompany_user_id());
			CompanyUserVo comNo = companyUserMapper.getSelect(companyUserVo);			
			session.setAttribute("company_no", comNo.getCompany_no());
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
