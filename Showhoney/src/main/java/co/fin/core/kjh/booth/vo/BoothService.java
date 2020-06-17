package co.fin.core.kjh.booth.vo;

import java.util.List;

public interface BoothService {
	List<BoothVo> getSelectBoothList(BoothVo vo);
	BoothVo getSelect(BoothVo vo);
	void boothInsert(BoothVo vo);
	void boothUpdate(BoothVo vo);
	void boothDelete(BoothVo vo);
}
