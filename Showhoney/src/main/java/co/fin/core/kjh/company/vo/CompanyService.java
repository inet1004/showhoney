package co.fin.core.kjh.company.vo;

import java.util.List;

public interface CompanyService {
	List<CompanyVo> getSelectList();
	CompanyVo getSelect(CompanyVo vo);
	void companyInsert(CompanyVo vo);
	void companyUpdate(CompanyVo vo);
	void companyDelete(CompanyVo vo);

}
