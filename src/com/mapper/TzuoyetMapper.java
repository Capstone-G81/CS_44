package com.mapper;
import java.util.List;
import java.util.Map;

import com.pojo.Tzuoyet;
public interface TzuoyetMapper
{

	public List<Tzuoyet> findTzuoyetList();
	
	public List<Tzuoyet> query(Map<String,Object> inputParam);
	
	public int insertTzuoyet(Tzuoyet tzuoyet);
	
	public int deleteTzuoyet(int id);
	
	public int updateTzuoyet(Tzuoyet tzuoyet);
	
	public Tzuoyet queryTzuoyetById(int id);

}
