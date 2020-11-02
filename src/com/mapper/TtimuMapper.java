package com.mapper;
import java.util.List;
import java.util.Map;

import com.pojo.Ttimu;
public interface TtimuMapper
{

	public List<Ttimu> findTtimuList();
	
	public List<Ttimu> query(Map<String,Object> inputParam);
	
	public int insertTtimu(Ttimu ttimu);
	
	public int deleteTtimu(int id);
	
	public int updateTtimu(Ttimu ttimu);
	
	public Ttimu queryTtimuById(int id);

}
