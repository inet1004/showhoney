package co.fin.core.kjh.admin.vo;

import java.util.List;

public interface AdminService {
	List<AdminVo> getSelectWaitingList();
	AdminVo getSelect(AdminVo vo);
	void adminInsert(AdminVo vo);
	void adminUpdate(AdminVo vo);
	void adminDelete(AdminVo vo);
	
	List<ExhibitionVo> getSelectExhibitionList();
	ExhibitionVo getSelectExhibition(ExhibitionVo exvo);
	void ExhibitionInsert(ExhibitionVo exvo);
	void ExhibitionUpdate(ExhibitionVo exvo);
	void ExhibitionDelete(ExhibitionVo exvo);	
	
}
