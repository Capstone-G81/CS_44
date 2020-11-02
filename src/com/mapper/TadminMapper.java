package com.mapper;
import java.util.List;
import java.util.Map;

import com.pojo.Tadmin;
public interface TadminMapper
{

	public List<Tadmin> findTadminList();
	
	public List<Tadmin> query(Map<String,Object> inputParam);
	
	public int insertTadmin(Tadmin tadmin);
	
	public int deleteTadmin(int id);
	
	public int updateTadmin(Tadmin tadmin);
	
	public Tadmin queryTadminById(int id);

}
