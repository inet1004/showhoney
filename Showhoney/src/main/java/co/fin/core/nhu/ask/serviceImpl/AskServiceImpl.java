package co.fin.core.nhu.ask.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import co.fin.core.nhu.ask.vo.AskService;
import co.fin.core.nhu.ask.vo.AskVo;
import co.fin.core.nhu.exhibition.vo.Exhibition2Vo;
import co.fin.core.nhu.exhibition.vo.ExhibitionService;
import co.fin.core.nhu.ticket.vo.TicketService;
import co.fin.core.nhu.ticket.vo.TicketVo;

@Service("askService")
public class AskServiceImpl implements AskService {
	
	@Autowired
	private AskMapper dao;

	@Override
	public List<AskVo> getSelectAskList() {
		// TODO Auto-generated method stub
		return dao.getSelectAskList();
	}

	@Override
	public AskVo getSelect(AskVo vo) {
		// TODO Auto-generated method stub
		return dao.getSelect(vo);
	}

	@Override
	public void askInsert(AskVo vo) {
		dao.askInsert(vo);
		
	}

	@Override
	public void askUpdate(AskVo vo) {
		dao.askUpdate(vo);
		
	}

	@Override
	public void askDelete(AskVo vo) {
		dao.askDelete(vo);
		
	}
	

}
