package co.fin.core.nhu.ticket.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import co.fin.core.nhu.exhibition.vo.Exhibition2Vo;
import co.fin.core.nhu.exhibition.vo.ExhibitionService;
import co.fin.core.nhu.ticket.vo.TicketService;
import co.fin.core.nhu.ticket.vo.TicketVo;

@Service("ticketService")
public class TicketServiceImpl implements TicketService {
	
	@Autowired
	private TicketMapper dao;

	@Override
	public List<TicketVo> getSelectTicketList() {
		// TODO Auto-generated method stub
		return dao.getSelectTicketList();
	}

	@Override
	public TicketVo getSelect(TicketVo vo) {
		// TODO Auto-generated method stub
		return dao.getSelect(vo);
	}

	@Override
	public void tickekInsert(TicketVo vo) {
		dao.ticketInsert(vo);
		
	}

	@Override
	public void tickekUpdate(TicketVo vo) {
		dao.ticketUpdate(vo);
		
	}

	@Override
	public void tickekDelete(TicketVo vo) {
		dao.ticketDelete(vo);
		
	}

	

}
