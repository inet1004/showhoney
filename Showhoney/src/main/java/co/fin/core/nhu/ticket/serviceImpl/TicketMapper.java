package co.fin.core.nhu.ticket.serviceImpl;

import java.util.List;

import org.mybatis.spring.annotation.MapperScan;

import co.fin.core.kjh.booth.vo.BoothVo;
import co.fin.core.nhu.exhibition.vo.Exhibition2Vo;
import co.fin.core.nhu.ticket.vo.TicketVo;

@MapperScan("ticketMap")
public interface TicketMapper {
	List<TicketVo> getSelectTicketList();
	TicketVo getSelect(TicketVo vo);
	void ticketInsert(TicketVo vo);
	void ticketUpdate(TicketVo vo);
	void ticketDelete(TicketVo vo);
}
