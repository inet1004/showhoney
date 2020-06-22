package co.fin.core.kbk.product.vo;

import java.util.List;

public interface ProductService {
	List<ProductVo> getSelectList();
	ProductVo getSelect(ProductVo vo);
	void productInsert(ProductVo vo);
	void productUpdate(ProductVo vo);
	void productDelete(ProductVo vo);
}
