package co.fin.core.kjh.likebooth.vo;

import java.util.List;
import java.util.Map;

public interface LikeBoothService {
	List<LikeBoothVo> getSelectLikeBoothList(LikeBoothVo vo);
	Integer likeCheck(LikeBoothVo vo);
	
	int likeBoothInsert(LikeBoothVo vo);
	void likeBoothDelete(LikeBoothVo vo);
	

}
