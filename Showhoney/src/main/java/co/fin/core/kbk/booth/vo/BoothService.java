package co.fin.core.kbk.booth.vo;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;


public interface BoothService {
	List<BoothVo> bgetSelectBoothList(BoothVo bvo);
	void boothInsert(BoothVo bvo, ProductVo pvo, HttpServletRequest request) throws IllegalStateException, IOException;
	void boothUpdate(BoothVo bvo, ProductVo pvo, HttpServletRequest request) throws IllegalStateException, IOException;
	void boothDelete(BoothVo bvo, ProductVo pvo, HttpServletRequest request) throws IllegalStateException, IOException;
	BoothVo getSelectCompanyNo(BoothVo bvo);
	//Customer
	List<BoothVo> getSelectCustomerBoothList(BoothVo bvo);
	
	//Ticket
	int ticketCheck(BoothVo bvo);
	
	//product
	List<ProductVo> getSelectList(ProductVo pvo);
	ProductVo getSelect(ProductVo pvo);
	void productInsert(ProductVo pvo, HttpServletRequest request) throws IOException;
	void productUpdate(BoothVo bvo, ProductVo pvo, HttpServletRequest request) throws IllegalStateException, IOException;
	void productDelete(ProductVo pvo, BoothVo bvo, HttpServletRequest request) throws IllegalStateException, IOException;
	

}
