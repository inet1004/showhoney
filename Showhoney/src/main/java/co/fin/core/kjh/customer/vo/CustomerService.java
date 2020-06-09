package co.fin.core.kjh.customer.vo;

import java.util.List;

public interface CustomerService {
	List<CustomerVo> getSelectList();
	CustomerVo getSelect(CustomerVo vo);
	void customerInsert(CustomerVo vo);
	void customerUpdate(CustomerVo vo);
	void customerDelete(CustomerVo vo);

}
