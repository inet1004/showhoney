package co.fin.core.kjh.customer.serviceImpl;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import co.fin.core.kjh.customer.vo.CustomerFileRenamePolicy;
import co.fin.core.kjh.customer.vo.CustomerService;
import co.fin.core.kjh.customer.vo.CustomerVo;

@Service("customerService")
public class CustomerServiceImpl implements CustomerService {
	
	@Autowired
	private CustomerMapper dao;
	

	@Autowired
	BCryptPasswordEncoder bCryptPasswordEncoder;
	
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
	public void customerInsert(CustomerVo vo, HttpServletRequest request) throws IllegalStateException, IOException {
		
		  MultipartFile uploadFile = vo.getUploadFile();
	      String path = request.getSession().getServletContext().getRealPath("/resources/FileUpload/customerProfile");
	      System.out.println(path);
	      
	      if(!uploadFile.isEmpty()) {
	         String fileName = uploadFile.getOriginalFilename();
	         File file = new File(path, fileName); 
	         file = new CustomerFileRenamePolicy().rename(file);
	         uploadFile.transferTo(file);
	         vo.setCustomer_profile(file.getName());
	      }else {
	         vo.setCustomer_profile("");
	      }
	     
		vo.setCustomer_pw(bCryptPasswordEncoder.encode(vo.getCustomer_pw()));
		dao.customerInsert(vo);

	}

	@Override
	public void customerUpdate(CustomerVo vo, HttpServletRequest request) throws IllegalStateException, IOException {
		
		  MultipartFile uploadFile = vo.getUploadFile();
	      String path = request.getSession().getServletContext().getRealPath("/resources/FileUpload/customerProfile");
	      System.out.println(path);
	      
	      if( uploadFile!=null && !uploadFile.isEmpty()) {
	         String fileName = uploadFile.getOriginalFilename();
	         uploadFile.transferTo(new File(path, fileName));
	         vo.setCustomer_profile(fileName);
//	         File file = new File(path, fileName); 
//	         file = new CustomerFileRenamePolicy().rename(file);
//	         uploadFile.transferTo(file);
//	         vo.setCustomer_profile(file.getName());
	      }
	      
//	      else {
//	         vo.setCustomer_profile("");
//	      }
		dao.customerUpdate(vo);

	}
	

	@Override
	public void customerPwUpdate(CustomerVo vo) {
		
		vo.setCustomer_pw(bCryptPasswordEncoder.encode(vo.getCustomer_pw()));
		dao.customerPwUpdate(vo);
		
	}

	@Override
	public void customerDelete(CustomerVo vo) {
		dao.customerDelete(vo);

	}


}
