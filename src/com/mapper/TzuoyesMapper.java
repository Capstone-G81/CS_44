package com.mapper;
import java.util.List;
import java.util.Map;

import com.pojo.Tzuoyes;
public interface TzuoyesMapper
{

	public List<Tzuoyes> findTzuoyesList();
	
	public List<Tzuoyes> query(Map<String,Object> inputParam);
	
	public int insertTzuoyes(Tzuoyes tzuoyes);
	
	public int deleteTzuoyes(int id);
	
	public int updateTzuoyes(Tzuoyes tzuoyes);
	
	public Tzuoyes queryTzuoyesById(int id);

}
