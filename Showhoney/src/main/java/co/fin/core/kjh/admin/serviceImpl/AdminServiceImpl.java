package co.fin.core.kjh.admin.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import co.fin.core.kjh.admin.vo.AdminService;
import co.fin.core.kjh.admin.vo.AdminVo;

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

}
