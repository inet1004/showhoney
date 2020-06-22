package co.fin.core.kbk.booth.serviceImpl;

import java.util.List;

import org.mybatis.spring.annotation.MapperScan;

import co.fin.core.kbk.booth.vo.BoothVo;
import co.fin.core.kbk.product.vo.ProductVo;

@MapperScan("boothMap")
public interface BoothMapper {
	List<BoothVo> getSelectBoothList(BoothVo vo);
	BoothVo getSelect(BoothVo vo);
	void boothInsert(BoothVo vo);
	void boothUpdate(BoothVo vo);
	void boothDelete(BoothVo vo);
}
