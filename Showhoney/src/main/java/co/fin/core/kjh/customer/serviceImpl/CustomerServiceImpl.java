package co.fin.core.kjh.customer.serviceImpl;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import co.fin.core.kjh.customer.vo.CustomerService;
import co.fin.core.kjh.customer.vo.CustomerVo;

@Service("customerService")
public class CustomerServiceImpl implements CustomerService {
	
	@Autowired
	private CustomerMapper dao;
	@Autowired
	PasswordEncoder pwdEncoder;
	
	@Override
	public List<CustomerVo> getSelectList() {
		// TODO Auto-generated method stub
		return dao.getSelectList();
	}

	@Override
	public CustomerVo getSelect(CustomerVo vo) {
		// TODO Auto-generated method stub
		return dao.getSelect(vo);
	}

	@Override
	public void customerInsert(CustomerVo vo) {
		vo.setCustomer_pw(pwdEncoder.encode(vo.getCustomer_pw()));
		dao.customerInsert(vo);

	}

	@Override
	public void customerUpdate(CustomerVo vo) {
		dao.customerUpdate(vo);

	}

	@Override
	public void customerDelete(CustomerVo vo) {
		dao.customerDelete(vo);

	}

}
