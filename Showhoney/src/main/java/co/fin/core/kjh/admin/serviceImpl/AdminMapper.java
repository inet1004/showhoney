package co.fin.core.kjh.admin.serviceImpl;

import java.util.List;

import org.mybatis.spring.annotation.MapperScan;

import co.fin.core.kjh.admin.vo.AdminVo;
import co.fin.core.kjh.admin.vo.ExhibitionVo;

@MapperScan("adminMap")
public interface AdminMapper {
	List<AdminVo> getSelectWaitingList();
	AdminVo getSelect(AdminVo vo);
	void adminInsert(AdminVo vo);
	void adminUpdate(AdminVo vo);
	void adminDelete(AdminVo vo);

	List<ExhibitionVo> getSelectExhibitionList();
	AdminVo getSelectExhibition(ExhibitionVo exvo);
	void ExhibitionInsert(ExhibitionVo exvo);
	void ExhibitionUpdate(ExhibitionVo exvo);
	void ExhibitionDelete(ExhibitionVo exvo);	
}

