package co.fin.core.kjh.admin.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import co.fin.core.kjh.admin.vo.AdminService;
import co.fin.core.kjh.admin.vo.AdminVo;
import co.fin.core.kjh.admin.vo.ExhibitionVo;

@Service("adminService")
public class AdminServiceImpl implements AdminService {
	
	@Autowired
	private AdminMapper dao;
	
	@Override
	public List<AdminVo> getSelectWaitingList() {
		// TODO Auto-generated method stub
		return dao.getSelectWaitingList();
	}

	@Override
	public AdminVo getSelect(AdminVo vo) {
		// TODO Auto-generated method stub
		return dao.getSelect(vo);
	}

	@Override
	public void adminInsert(AdminVo vo) {
		dao.adminInsert(vo);

	}

	@Override
	public void adminUpdate(AdminVo vo) {
		dao.adminUpdate(vo);

	}

	@Override
	public void adminDelete(AdminVo vo) {
		dao.adminDelete(vo);

	}

	


	@Override
	public ExhibitionVo getSelectExhibition(ExhibitionVo exvo) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void ExhibitionInsert(ExhibitionVo exvo) {
		dao.ExhibitionInsert(exvo);
		
	}

	@Override
	public void ExhibitionUpdate(ExhibitionVo exvo) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void ExhibitionDelete(ExhibitionVo exvo) {
		dao.ExhibitionDelete(exvo);
		
	}

	@Override
	public List<ExhibitionVo> getSelectExhibitionList() {
		// TODO Auto-generated method stub
		return dao.getSelectExhibitionList();
	}	
	

}
