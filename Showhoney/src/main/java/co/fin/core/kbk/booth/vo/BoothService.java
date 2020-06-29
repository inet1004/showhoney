package co.fin.core.kbk.booth.vo;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;


public interface BoothService {
	List<BoothVo> bgetSelectBoothList(BoothVo vo);
	void boothInsert(BoothVo bvo, ProductVo pvo, HttpServletRequest request) throws IllegalStateException, IOException;
	void boothUpdate(BoothVo bvo, ProductVo pvo, HttpServletRequest request) throws IllegalStateException, IOException;
	void boothDelete(BoothVo bvo, ProductVo pvo, HttpServletRequest request) throws IllegalStateException, IOException;
	
	//Customer
	List<BoothVo> getSelectCustomerBoothList(BoothVo vo);
	
	//Ticket
	int ticketCheck(BoothVo vo);
	
	//product
	List<ProductVo> getSelectList(ProductVo vo);
	ProductVo getSelect(ProductVo vo);
	void productInsert(ProductVo vo, HttpServletRequest request) throws IOException;
	void productUpdate(BoothVo bvo, ProductVo pvo, HttpServletRequest request) throws IllegalStateException, IOException;
	void productDelete(ProductVo vo, BoothVo bvo, HttpServletRequest request) throws IllegalStateException, IOException;
	

}
