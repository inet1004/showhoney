package co.fin.core.kjh.companyuser.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import co.fin.core.kjh.companyuser.vo.CompanyUserService;
import co.fin.core.kjh.companyuser.vo.CompanyUserVo;

@Service("companyUserService")
public class CompanyUserServiceImpl implements CompanyUserService {
	
	@Autowired
	private CompanyUserMapper dao;

	@Autowired
	BCryptPasswordEncoder bCryptPasswordEncoder;
	
	@Override
	public List<CompanyUserVo> getSelectList() {
		// TODO Auto-generated method stub
		return dao.getSelectList();
	}

	@Override
	public CompanyUserVo getSelect(CompanyUserVo vo) {
		// TODO Auto-generated method stub
		return dao.getSelect(vo);
	}

	@Override
	public void companyUserInsert(CompanyUserVo vo) {
		dao.companyUserInsert(vo);

	}

	@Override
	public void companyUserUpdate(CompanyUserVo vo) {
		dao.companyUserUpdate(vo);

	}

	@Override
	public void companyUserDelete(CompanyUserVo vo) {
		dao.companyUserDelete(vo);

	}

	@Override
	public void companyInsert(CompanyUserVo vo) {
		vo.setCompany_user_pw(bCryptPasswordEncoder.encode(vo.getCompany_user_pw()));
		vo.setCompany_user_pw2(bCryptPasswordEncoder.encode(vo.getCompany_user_pw2()));
		vo.setCompany_user_pw3(bCryptPasswordEncoder.encode(vo.getCompany_user_pw3()));
		
		dao.companyInsert(vo); 
		dao.companyUserInsert(vo); //여기까지 한 기업+기업회원 처리
		dao.companyUserInsert2(vo);
		dao.companyUserInsert3(vo);
		
		
	}

	@Override
	public void companyUserInsert2(CompanyUserVo vo) {
		dao.companyUserInsert2(vo);
		
	}

	@Override
	public void companyUserInsert3(CompanyUserVo vo) {
		dao.companyUserInsert3(vo);
		
	}

}
