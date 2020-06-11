package co.fin.core.kjh.company.serviceImpl;

import java.util.List;

import org.mybatis.spring.annotation.MapperScan;

import co.fin.core.kjh.admin.vo.AdminVo;
import co.fin.core.kjh.company.vo.CompanyVo;

@MapperScan("companyMap")
public interface CompanyMapper {
	List<CompanyVo> getSelectList();
	CompanyVo getSelect(CompanyVo vo);
	void companyInsert(CompanyVo vo);
	void companyUpdate(CompanyVo vo);
	void companyDelete(CompanyVo vo);


}
