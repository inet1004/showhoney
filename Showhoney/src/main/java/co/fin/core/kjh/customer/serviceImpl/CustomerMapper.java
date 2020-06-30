package co.fin.core.kjh.customer.serviceImpl;

import java.util.List;


import org.mybatis.spring.annotation.MapperScan;

import co.fin.core.kjh.customer.vo.CustomerService;
import co.fin.core.kjh.customer.vo.CustomerVo;

/*
 * public interface CustomerMapper extends CustomerService {
 * 
 * }
 */

@MapperScan("map2")
public interface CustomerMapper {
	List<CustomerVo> getSelectList();
	CustomerVo getSelect(CustomerVo vo);
	void customerInsert(CustomerVo vo);
	void customerUpdate(CustomerVo vo);
	void customerDelete(CustomerVo vo);
	void customerPwUpdate(CustomerVo vo);
}
