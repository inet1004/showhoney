package co.fin.core.kjh.admin.serviceImpl;

import java.util.List;

import org.mybatis.spring.annotation.MapperScan;

import co.fin.core.kjh.admin.vo.AdminVo;

@MapperScan("adminMap")
public interface AdminMapper {
	List<AdminVo> getSelectWaitingList();
	AdminVo getSelect(AdminVo vo);
	void adminInsert(AdminVo vo);
	void adminUpdate(AdminVo vo);
	void adminDelete(AdminVo vo);

}
