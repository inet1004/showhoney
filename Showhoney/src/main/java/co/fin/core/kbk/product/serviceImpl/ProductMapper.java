package co.fin.core.kbk.product.serviceImpl;

import java.util.List;

import org.mybatis.spring.annotation.MapperScan;

import co.fin.core.kbk.product.vo.ProductVo;

@MapperScan("productMap")
public interface ProductMapper {
	List<ProductVo> getSelectList();
	ProductVo getSelect(ProductVo vo);
	void productInsert(ProductVo vo);
	void productUpdate(ProductVo vo);
	void productDelete(ProductVo vo);


}
