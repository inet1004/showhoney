package co.fin.core.aaa.board.serviceImpl;

import java.util.List;

import org.mybatis.spring.annotation.MapperScan;

import co.fin.core.aaa.board.vo.BoardVo;

/*public interface boardMapper extends BoardService {

}*/

@MapperScan("map")
public interface BoardMapper {
	List<BoardVo> getSelectList();
	BoardVo getSelect(BoardVo vo);
	void boardInsert(BoardVo vo);
	void boardUpdate(BoardVo vo);
	void boardDelete(BoardVo vo);

}
