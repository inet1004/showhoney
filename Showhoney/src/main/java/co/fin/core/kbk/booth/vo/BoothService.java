package co.fin.core.kbk.booth.vo;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;


public interface BoothService {
	List<BoothVo> bgetSelectBoothList(BoothVo vo);
	void boothInsert(BoothVo bvo, ProductVo pvo, HttpServletRequest request) throws IllegalStateException, IOException;
	void boothUpdate(BoothVo vo);
	void boothDelete(BoothVo vo);
	
	//Customer
	List<BoothVo> getSelectCustomerBoothList(BoothVo vo);
	
	//Ticket
	int ticketCheck(BoothVo vo);
	
	//product
	List<ProductVo> getSelectList(ProductVo vo);
	ProductVo getSelect(ProductVo vo);
	void productInsert(ProductVo vo, HttpServletRequest request) throws IOException;
	void productUpdate(ProductVo vo);
	void productDelete(ProductVo vo);
	

}
