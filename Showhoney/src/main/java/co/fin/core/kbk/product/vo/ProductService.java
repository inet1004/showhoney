package co.fin.core.kbk.product.vo;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

public interface ProductService {
	List<ProductVo> getSelectList(ProductVo vo);
	ProductVo getSelect(ProductVo vo);
	void productInsert(ProductVo vo, HttpServletRequest request) throws IOException;
	void productUpdate(ProductVo vo);
	void productDelete(ProductVo vo);
}
