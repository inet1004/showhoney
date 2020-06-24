package co.fin.core.nhu.payment.vo;

import java.util.List;

public interface PayService {
	List<PayVo> getSelectPayList();
	PayVo getSelect(PayVo vo);
	void payInsert(PayVo vo);
	void payUpdate(PayVo vo);
	void payDelete(PayVo vo);
}
