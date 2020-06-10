package co.fin.core.kjh.companyuser.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import co.fin.core.kjh.companyuser.vo.CompanyUserService;
import co.fin.core.kjh.companyuser.vo.CompanyUserVo;

@Service("companyUserService")
public class CompanyUserServiceImpl implements CompanyUserService {
	
	@Autowired
	private CompanyUserMapper dao;
	
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

}
