package co.fin.core.kjh.likebooth.serviceImpl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import co.fin.core.kjh.likebooth.vo.LikeBoothService;
import co.fin.core.kjh.likebooth.vo.LikeBoothVo;

@Service("likeBoothService")
public class LikeBoothServiceImpl implements LikeBoothService {
	
	@Autowired
	private LikeBoothMapper dao;
	
	@Override
	public List<LikeBoothVo> getSelectLikeBoothList(LikeBoothVo vo) {
		return dao.getSelectLikeBoothList(vo);
	}

	@Override
	public Integer likeCheck(LikeBoothVo vo) {
		// TODO Auto-generated method stub
		return dao.likeCheck(vo);
	}

	@Override
	public int likeBoothInsert(LikeBoothVo vo) {
		int n = 0;
		int num = 0;
		n = dao.likeCheck(vo);
		if(n==0) {
			dao.likeBoothInsert(vo);
			num = 10;
			
		}else {
			dao.likeBoothDelete(vo);
			num = 20;
			
		}return num;
		

	}

	@Override
	public void likeBoothDelete(LikeBoothVo vo) {
		dao.likeBoothDelete(vo);

	}

}
