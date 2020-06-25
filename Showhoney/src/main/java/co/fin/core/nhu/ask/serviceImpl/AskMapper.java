package co.fin.core.nhu.ask.serviceImpl;

import java.util.List;

import org.mybatis.spring.annotation.MapperScan;

import co.fin.core.nhu.ask.vo.AskVo;
import co.fin.core.nhu.exhibition.vo.Exhibition2Vo;
import co.fin.core.nhu.ticket.vo.TicketVo;

@MapperScan("askMap")
public interface AskMapper {
	List<AskVo> getSelectAskList();
	AskVo getSelect(AskVo vo);
	void askInsert(AskVo vo);
	void askUpdate(AskVo vo);
	void askDelete(AskVo vo);
}
