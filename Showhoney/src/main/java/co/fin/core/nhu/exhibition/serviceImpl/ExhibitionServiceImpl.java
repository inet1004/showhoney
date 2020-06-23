package co.fin.core.nhu.exhibition.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import co.fin.core.nhu.exhibition.vo.Exhibition2Vo;
import co.fin.core.nhu.exhibition.vo.ExhibitionService;

@Service("exhibitionService")
public class ExhibitionServiceImpl implements ExhibitionService {
	
	@Autowired
	private ExhibitionMapper dao;

	@Override
	public List<Exhibition2Vo> getSelectExhibitionList() {
		// TODO Auto-generated method stub
		return dao.getSelectExhibitionList();
	}
	

	@Override
	public Exhibition2Vo getSelect(Exhibition2Vo vo) {
		// TODO Auto-generated method stub
		return dao.getSelect(vo);
	}

	@Override
	public void exhibitionInsert(Exhibition2Vo vo) {
		dao.exhibitionInsert(vo);
		
	}

	@Override
	public void exhibitionUpdate(Exhibition2Vo vo) {
		dao.exhibitionUpdate(vo);
		
	}

	@Override
	public void exhibitionDelete(Exhibition2Vo vo) {
		dao.exhibitionDelete(vo);
		
	}

}
