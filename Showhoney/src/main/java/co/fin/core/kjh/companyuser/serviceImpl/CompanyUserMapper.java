package co.fin.core.kjh.companyuser.serviceImpl;

import java.util.List;

import org.mybatis.spring.annotation.MapperScan;

import co.fin.core.kjh.companyuser.vo.CompanyUserVo;

@MapperScan("companyUserMap")
public interface CompanyUserMapper {
	List<CompanyUserVo> getSelectList();
	CompanyUserVo getSelect(CompanyUserVo vo);
	void companyUserInsert(CompanyUserVo vo);
	void companyUserUpdate(CompanyUserVo vo);
	void companyUserDelete(CompanyUserVo vo);


}
