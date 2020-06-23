package co.fin.core.nhu.exhibition.serviceImpl;

import java.util.List;

import org.mybatis.spring.annotation.MapperScan;

import co.fin.core.nhu.exhibition.vo.Exhibition2Vo;

@MapperScan("exhibitionMap")
public interface ExhibitionMapper {
	List<Exhibition2Vo> getSelectExhibitionList();
	Exhibition2Vo getSelect(Exhibition2Vo vo);
	void exhibitionInsert(Exhibition2Vo vo);
	void exhibitionUpdate(Exhibition2Vo vo);
	void exhibitionDelete(Exhibition2Vo vo);
}
