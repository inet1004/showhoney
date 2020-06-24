package co.fin.core.nhu.payment.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import co.fin.core.nhu.exhibition.vo.Exhibition2Vo;
import co.fin.core.nhu.exhibition.vo.ExhibitionService;
import co.fin.core.nhu.payment.vo.PayService;
import co.fin.core.nhu.payment.vo.PayVo;
import co.fin.core.nhu.ticket.vo.TicketService;
import co.fin.core.nhu.ticket.vo.TicketVo;

@Service("payService")
public class PayServiceImpl implements PayService {
	
	@Autowired
	private PayMapper dao;

	@Override
	public List<PayVo> getSelectPayList() {
		return dao.getSelectPayList();
	}	

	@Override
	public PayVo getSelect(PayVo vo) {
		return dao.getSelect(vo);
	}

	@Override
	public void payInsert(PayVo vo) {
		dao.payInsert(vo);
	}

	@Override
	public void payUpdate(PayVo vo) {
		dao.payUpdate(vo);
	}

	@Override
	public void payDelete(PayVo vo) {
		dao.payDelete(vo);
	}


	

	

}
