package co.fin.core.nhu.exhibition.vo;

import java.util.List;

public interface ExhibitionService {
	List<Exhibition2Vo> getSelectExhibitionList();
	Exhibition2Vo getSelect(Exhibition2Vo vo);
	void exhibitionInsert(Exhibition2Vo vo);
	void exhibitionUpdate(Exhibition2Vo vo);
	void exhibitionDelete(Exhibition2Vo vo);
}
