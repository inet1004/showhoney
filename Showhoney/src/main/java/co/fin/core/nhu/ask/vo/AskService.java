package co.fin.core.nhu.ask.vo;

import java.util.List;

public interface AskService {
	List<AskVo> getSelectAskList();
	AskVo getSelect(AskVo vo);
	void askInsert(AskVo vo);
	void askUpdate(AskVo vo);
	void askDelete(AskVo vo);
}
