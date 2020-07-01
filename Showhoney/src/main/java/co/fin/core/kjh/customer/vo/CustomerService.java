package co.fin.core.kjh.customer.vo;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

public interface CustomerService {
	List<CustomerVo> getSelectList();
	CustomerVo getSelect(CustomerVo vo);
	CustomerVo customerSelect(CustomerVo vo);
	void customerInsert(CustomerVo vo, HttpServletRequest request) throws IllegalStateException, IOException;
	void customerUpdate(CustomerVo vo, HttpServletRequest request) throws IllegalStateException, IOException;
	void customerDelete(CustomerVo vo);
	void customerPwUpdate(CustomerVo vo);

}
