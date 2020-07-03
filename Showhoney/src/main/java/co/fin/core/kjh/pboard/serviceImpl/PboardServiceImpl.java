package co.fin.core.kjh.pboard.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import co.fin.core.kjh.pboard.vo.PboardService;
import co.fin.core.kjh.pboard.vo.PboardVo;

@Service("pboardService")
public class PboardServiceImpl implements PboardService {
	@Autowired
	private PboardMapper dao;
	
	@Override
	public List<PboardVo> getSelectPboardList() {
		return dao.getSelectPboardList();
	}

	@Override
	public PboardVo getSelectPboard(PboardVo vo) {
		return dao.getSelectPboard(vo);
	}

	@Override
	public void pboardInsert(PboardVo vo) {
		dao.pboardInsert(vo);

	}

	@Override
	public void pboardUpdate(PboardVo vo) {
		dao.pboardUpdate(vo);

	}

	@Override
	public void pboardDelete(PboardVo vo) {
		dao.pboardDelete(vo);

	}

	@Override
	public List<PboardVo> getSelectBooth(PboardVo vo) {
		return dao.getSelectBooth(vo);
	}

	@Override
	public PboardVo getSelectCompany(PboardVo vo) {
		return dao.getSelectCompany(vo);
	}

	@Override
	public int pboardTicketCheck(PboardVo vo) {
		return dao.pboardTicketCheck(vo);
	}

}
