package co.fin.core.kbk.booth.serviceImpl;

import java.util.List;

import org.mybatis.spring.annotation.MapperScan;

import co.fin.core.kbk.booth.vo.BoothVo;
import co.fin.core.kbk.booth.vo.ProductVo;

@MapperScan("boothMap")
public interface BoothMapper {
	List<BoothVo> bgetSelectBoothList(BoothVo vo);
	void boothInsert(BoothVo vo);
	void boothUpdate(BoothVo vo);
	void boothDelete(BoothVo vo);
	
	//Customer
	List<BoothVo> getSelectCustomerBoothList(BoothVo vo);
	
	//product mapper
	List<ProductVo> getSelectList(ProductVo vo);
	ProductVo getSelect(ProductVo vo);
	void productInsert(ProductVo vo);
	void productUpdate(ProductVo vo);
	void productDelete(ProductVo vo);
}
