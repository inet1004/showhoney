package co.fin.core.kjh.booth.serviceImpl;

import java.util.List;

import org.mybatis.spring.annotation.MapperScan;

import co.fin.core.kjh.booth.vo.BoothVo;

@MapperScan("boothMap")
public interface BoothMapper {
	List<BoothVo> getSelectBoothList(BoothVo vo);
	BoothVo getSelect(BoothVo vo);
	void boothInsert(BoothVo vo);
	void boothUpdate(BoothVo vo);
	void boothDelete(BoothVo vo);
}
