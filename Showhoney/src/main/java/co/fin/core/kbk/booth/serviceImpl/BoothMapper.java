package co.fin.core.kbk.booth.serviceImpl;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.mybatis.spring.annotation.MapperScan;

import co.fin.core.kbk.booth.vo.BoothVo;
import co.fin.core.kbk.booth.vo.ProductVo;

@MapperScan("boothMap")
public interface BoothMapper {
	List<BoothVo> bgetSelectBoothList(BoothVo bvo);
	void boothInsert(BoothVo bvo) throws IllegalStateException, IOException;
	void boothUpdate(BoothVo bvo) throws IllegalStateException, IOException;
	void boothDelete(BoothVo bvo) throws IllegalStateException, IOException;
	BoothVo getSelectCompanyNo(BoothVo bvo);
	//Customer
	List<BoothVo> getSelectCustomerBoothList(BoothVo bvo);
	
	//Ticket
	int ticketCheck(BoothVo bvo);
	
	//product
	List<ProductVo> getSelectList(ProductVo pvo);
	ProductVo getSelect(ProductVo pvo);
	void productInsert(ProductVo pvo) throws IOException;
	void productUpdate(ProductVo pvo) throws IllegalStateException, IOException;
	void productDelete(ProductVo pvo) throws IllegalStateException, IOException;
	
	//videocall
	int videoCallUpdate(BoothVo bvo);
}
