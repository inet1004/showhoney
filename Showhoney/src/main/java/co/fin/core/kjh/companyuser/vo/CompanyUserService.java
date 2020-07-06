package co.fin.core.kjh.companyuser.vo;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

public interface CompanyUserService {
	List<CompanyUserVo> getSelectList();
	CompanyUserVo getSelect(CompanyUserVo vo);
	void companyInsert(CompanyUserVo vo);
	void companyUserInsert(CompanyUserVo vo);
	void companyUserInsert2(CompanyUserVo vo);
	void companyUserInsert3(CompanyUserVo vo);
	void companyUserUpdate(CompanyUserVo vo, HttpServletRequest request) throws IllegalStateException, IOException; //프로필 변경
	void companyUpdate(CompanyUserVo vo);
	CompanyUserVo companySelect(CompanyUserVo vo);
	CompanyUserVo companyUserSelect(CompanyUserVo vo);
	void companyUserPwUpdate(CompanyUserVo vo, HttpServletRequest request);
	void companyUserDelete(CompanyUserVo vo, HttpServletRequest request);

}
