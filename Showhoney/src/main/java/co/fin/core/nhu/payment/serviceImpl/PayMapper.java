package co.fin.core.nhu.payment.serviceImpl;

import java.util.List;

import org.mybatis.spring.annotation.MapperScan;

import co.fin.core.nhu.exhibition.vo.Exhibition2Vo;
import co.fin.core.nhu.payment.vo.PayVo;
import co.fin.core.nhu.ticket.vo.TicketVo;

@MapperScan("payMap")
public interface PayMapper {
	List<PayVo> getSelectPayList(PayVo vo);
	PayVo getSelect(PayVo vo);
	void payInsert(PayVo vo);
	void payUpdate(PayVo vo);
	void payDelete(PayVo vo);
}
