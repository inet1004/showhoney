package co.fin.core.nhu.ticket.vo;

import java.util.List;

public interface TicketService {
	List<TicketVo> getSelectTicketList();
	TicketVo getSelect(TicketVo vo);
	void tickekInsert(TicketVo vo);
	void tickekUpdate(TicketVo vo);
	void tickekDelete(TicketVo vo);
}
