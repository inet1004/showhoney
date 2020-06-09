package co.fin.core.board.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import co.fin.core.board.vo.BoardService;
import co.fin.core.board.vo.BoardVo;

@Service("boardService")
public class BoardServiceImpl implements BoardService {
	
	@Autowired
	private BoardMapper dao;
	
	@Override
	public List<BoardVo> getSelectList() {
		// TODO Auto-generated method stub
		return dao.getSelectList();
	}

	@Override
	public BoardVo getSelect(BoardVo vo) {
		// TODO Auto-generated method stub
		return dao.getSelect(vo);
	}

	@Override
	public void boardInsert(BoardVo vo) {
		// TODO Auto-generated method stub

	}

	@Override
	public void boardUpdate(BoardVo vo) {
		// TODO Auto-generated method stub

	}

	@Override
	public void boardDelete(BoardVo vo) {
		// TODO Auto-generated method stub

	}

}
