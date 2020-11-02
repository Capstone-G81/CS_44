package com.mapper;
import java.util.List;
import java.util.Map;

import com.pojo.Tdoc;
public interface TdocMapper
{

	public List<Tdoc> findTdocList();
	
	public List<Tdoc> query(Map<String,Object> inputParam);
	
	public int insertTdoc(Tdoc tdoc);
	
	public int deleteTdoc(int id);
	
	public int updateTdoc(Tdoc tdoc);
	
	public Tdoc queryTdocById(int id);

}
