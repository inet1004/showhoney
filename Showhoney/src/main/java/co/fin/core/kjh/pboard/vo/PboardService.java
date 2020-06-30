package co.fin.core.kjh.pboard.vo;

import java.util.List;

public interface PboardService {
	List<PboardVo> getSelectPboardList();
	PboardVo getSelectPboard(PboardVo vo);
	void pboardInsert(PboardVo vo);
	void pboardUpdate(PboardVo vo);
	void pboardDelete(PboardVo vo);
	
	List<PboardVo> getSelectBooth(PboardVo vo);
	PboardVo getSelectCompany(PboardVo vo);
	

}
