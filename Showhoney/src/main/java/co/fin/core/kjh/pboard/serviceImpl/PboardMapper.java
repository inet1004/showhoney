package co.fin.core.kjh.pboard.serviceImpl;

import java.util.List;

import org.mybatis.spring.annotation.MapperScan;

import co.fin.core.kjh.pboard.vo.PboardVo;

@MapperScan("pboardMap")
public interface PboardMapper {
	List<PboardVo> getSelectPboardList();
	PboardVo getSelectPboard(PboardVo vo);
	void pboardInsert(PboardVo vo);
	void pboardUpdate(PboardVo vo);
	void pboardDelete(PboardVo vo);
	
	List<PboardVo> getSelectBooth(PboardVo vo);
	PboardVo getSelectCompany(PboardVo vo);
	int pboardTicketCheck(PboardVo vo);
}
