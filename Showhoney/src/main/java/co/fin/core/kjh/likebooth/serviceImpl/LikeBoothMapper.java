package co.fin.core.kjh.likebooth.serviceImpl;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.annotation.MapperScan;

import co.fin.core.kjh.likebooth.vo.LikeBoothVo;

@MapperScan("likeBoothMap")
public interface LikeBoothMapper {
	List<LikeBoothVo> getSelectLikeBoothList(LikeBoothVo vo);
	Integer likeCheck(LikeBoothVo vo);
	
	int likeBoothInsert(LikeBoothVo vo);
	void likeBoothDelete(LikeBoothVo vo);

}
