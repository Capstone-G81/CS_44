package com.mapper;
import java.util.List;
import java.util.Map;

import com.pojo.Tstu;
public interface TstuMapper
{

	public List<Tstu> findTstuList();
	
	public List<Tstu> query(Map<String,Object> inputParam);
	
	public int insertTstu(Tstu tstu);
	
	public int deleteTstu(int id);
	
	public int updateTstu(Tstu tstu);
	
	public Tstu queryTstuById(int id);

}
