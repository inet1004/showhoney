package co.fin.core.board.vo;

import java.util.List;

public interface BoardService {
	List<BoardVo> getSelectList();
	BoardVo getSelect(BoardVo vo);
	void boardInsert(BoardVo vo);
	void boardUpdate(BoardVo vo);
	void boardDelete(BoardVo vo);
	
	//여기에 계속 필요한 서비스를 추가한다.
	

}
