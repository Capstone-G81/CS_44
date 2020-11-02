package com.mapper;
import java.util.List;
import java.util.Map;

import com.pojo.Tshipin;
public interface TshipinMapper
{

	public List<Tshipin> findTshipinList();
	
	public List<Tshipin> query(Map<String,Object> inputParam);
	
	public int insertTshipin(Tshipin tshipin);
	
	public int deleteTshipin(int id);
	
	public int updateTshipin(Tshipin tshipin);
	
	public Tshipin queryTshipinById(int id);

}
