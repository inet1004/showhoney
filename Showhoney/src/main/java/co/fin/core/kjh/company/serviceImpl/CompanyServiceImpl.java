package co.fin.core.kjh.company.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import co.fin.core.kjh.company.vo.CompanyService;
import co.fin.core.kjh.company.vo.CompanyVo;

@Service("companyService")
public class CompanyServiceImpl implements CompanyService {

	@Autowired
	private CompanyMapper dao;
	
	@Override
	public List<CompanyVo> getSelectList() {
		return dao.getSelectList();
	}

	@Override
	public CompanyVo getSelect(CompanyVo vo) {
		return dao.getSelect(vo);
	}

	@Override
	public void companyInsert(CompanyVo vo) {
		dao.companyInsert(vo);

	}

	@Override
	public void companyUpdate(CompanyVo vo) {
		dao.companyUpdate(vo);

	}

	@Override
	public void companyDelete(CompanyVo vo) {
		dao.companyDelete(vo);

	}

}
