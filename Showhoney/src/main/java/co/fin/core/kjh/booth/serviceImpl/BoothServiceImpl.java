package co.fin.core.kjh.booth.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import co.fin.core.kjh.booth.vo.BoothService;
import co.fin.core.kjh.booth.vo.BoothVo;

@Service("boothService")
public class BoothServiceImpl implements BoothService {
	
	@Autowired
	private BoothMapper dao;

	@Override
	public List<BoothVo> getSelectBoothList(BoothVo vo) {
		return dao.getSelectBoothList(vo);
	}

	@Override
	public BoothVo getSelect(BoothVo vo) {
		return dao.getSelect(vo);
	}

	@Override
	public void boothInsert(BoothVo vo) {
		dao.boothInsert(vo);

	}

	@Override
	public void boothUpdate(BoothVo vo) {
		dao.boothUpdate(vo);

	}

	@Override
	public void boothDelete(BoothVo vo) {
		dao.boothDelete(vo);

	}

}