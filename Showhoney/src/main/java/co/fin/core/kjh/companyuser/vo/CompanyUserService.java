package co.fin.core.kjh.companyuser.vo;

import java.util.List;

public interface CompanyUserService {
	List<CompanyUserVo> getSelectList();
	CompanyUserVo getSelect(CompanyUserVo vo);
	void companyUserInsert(CompanyUserVo vo);
	void companyUserUpdate(CompanyUserVo vo);
	void companyUserDelete(CompanyUserVo vo);

}
