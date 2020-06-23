package co.fin.core.kbk.booth.vo;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import co.fin.core.kbk.product.vo.ProductVo;


public interface BoothService {
	List<BoothVo> getSelectBoothList(BoothVo vo);
	BoothVo getSelect(BoothVo vo);
	void boothInsert(BoothVo bvo, ProductVo pvo, HttpServletRequest request) throws IllegalStateException, IOException;
	void boothUpdate(BoothVo vo);
	void boothDelete(BoothVo vo);

}
